-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 04:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kelahiran`
--

CREATE TABLE `data_kelahiran` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmpt_lahiran` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hari_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jam_lahir` double NOT NULL,
  `jenis_kelahiran` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kelahiran_ke` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penolong_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `panjang` float DEFAULT NULL,
  `ibu_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_tgl_lahir` date DEFAULT NULL,
  `ibu_pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_kewarganegaraan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_tgl_kawin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_tgl_lahir` date DEFAULT NULL,
  `ayah_pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_kewarganegaraan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_tmp_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_kerja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lapor` date DEFAULT NULL,
  `saksi_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_2_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_2_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_2_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi_2_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_kelahiran`
--

INSERT INTO `data_kelahiran` (`id`, `no_kk`, `nama_kk`, `nik`, `nama`, `jk`, `tmpt_lahiran`, `tmpt_lahir`, `hari_lahir`, `tgl_lahir`, `jam_lahir`, `jenis_kelahiran`, `kelahiran_ke`, `penolong_lahir`, `berat`, `panjang`, `ibu_nik`, `ibu_nama`, `ibu_tmpt_lahir`, `ibu_tgl_lahir`, `ibu_pekerjaan`, `ibu_alamat`, `ibu_kewarganegaraan`, `ibu_tgl_kawin`, `ayah_nik`, `ayah_nama`, `ayah_tmpt_lahir`, `ayah_tgl_lahir`, `ayah_pekerjaan`, `ayah_alamat`, `ayah_kewarganegaraan`, `pelapor_nik`, `pelapor_nama`, `pelapor_tmp_lahir`, `pelapor_tgl_lahir`, `pelapor_umur`, `pelapor_kerja`, `pelapor_alamat`, `tgl_lapor`, `saksi_nik`, `saksi_nama`, `saksi_umur`, `saksi_alamat`, `saksi_2_nik`, `saksi_2_nama`, `saksi_2_umur`, `saksi_2_alamat`) VALUES
(1, '1', '1', NULL, '1', 'L', '1', '1', '1', '2021-11-30', 1, '1', '1', '1', 1, 5, '1', '1', '1', '2021-11-28', '1', '1', '1', '1', '1', '1', '1', '2021-11-29', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2021-12-21', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_kematian`
--

CREATE TABLE `data_kematian` (
  `id` int(11) NOT NULL,
  `nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hari_meninggal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `umur` int(10) DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anak_ke` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meninggal_tgl` date DEFAULT NULL,
  `tmpt_meninggal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jam_meninggal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sebab` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmpt_kematian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menerangkan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ibu_kewarganegaraan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ayah_kewarganegaraan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_tmp_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_kerja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pelapor_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lapor` date DEFAULT NULL,
  `saksi1_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi1_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi1_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi1_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi2_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi2_nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi2_umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saksi2_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_kematian`
--

INSERT INTO `data_kematian` (`id`, `nama_kk`, `no_kk`, `nik`, `nama`, `jk`, `tmpt_lahir`, `hari_meninggal`, `tgl_lahir`, `umur`, `agama`, `pekerjaan`, `alamat`, `anak_ke`, `meninggal_tgl`, `tmpt_meninggal`, `jam_meninggal`, `sebab`, `tmpt_kematian`, `menerangkan`, `ibu_nik`, `ibu_nama`, `ibu_tmpt_lahir`, `ibu_tgl_lahir`, `ibu_pekerjaan`, `ibu_alamat`, `ibu_kewarganegaraan`, `ayah_nik`, `ayah_nama`, `ayah_tmpt_lahir`, `ayah_tgl_lahir`, `ayah_pekerjaan`, `ayah_alamat`, `ayah_kewarganegaraan`, `pelapor_nik`, `pelapor_nama`, `pelapor_tmp_lahir`, `pelapor_tgl_lahir`, `pelapor_umur`, `pelapor_kerja`, `pelapor_alamat`, `tgl_lapor`, `saksi1_nik`, `saksi1_nama`, `saksi1_umur`, `saksi1_alamat`, `saksi2_nik`, `saksi2_nama`, `saksi2_umur`, `saksi2_alamat`) VALUES
(1, 'y', '098949539', '50390583', 'y', 'L', 'y', 'selasa', '7-9-10', 6, 'islam', 'y', 'yu', '1', '2021-12-01', 'yu', '17.00', 'kecelakaan', 'rs', 'y', '05496549', 'y', 'y', '12/01/1987', 'y', 'y', 'y', '90458605', 'y', 'y', '12/9/1984', 'y', 'y', 'y', '5757544', 'y', 'y', '5/7/1999', '18', 'y', 'y', '2021-12-01', '5476', 'y', '11', 'y', '543643', 'y', '10', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `data_ket_tidakmampu`
--

CREATE TABLE `data_ket_tidakmampu` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `status_perkawinan` varchar(255) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_t` int(255) DEFAULT NULL,
  `nik_t` int(255) DEFAULT NULL,
  `tempat_lahir_t` int(255) DEFAULT NULL,
  `tgl_lahir_t` date DEFAULT NULL,
  `agama_t` int(255) DEFAULT NULL,
  `status_kawin_t` varchar(255) DEFAULT NULL,
  `pekerjaan_t` varchar(255) DEFAULT NULL,
  `alamat_t` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_pengajuans`
--

CREATE TABLE `data_pengajuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_surat_id` bigint(20) UNSIGNED NOT NULL,
  `warga_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(0) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berkas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_pengajuans`
--

INSERT INTO `data_pengajuans` (`id`, `kategori_surat_id`, `warga_id`, `nama_pemesan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `alamat`, `pekerjaan`, `status_perkawinan`, `agama`, `berkas`, `created_at`, `updated_at`, `data`) VALUES
(1, 1, NULL, '1', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-01 18:09:30', '2021-12-01 18:09:30', '1'),
(2, 5, 5, 'd', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-02 06:45:39', '2021-12-02 06:45:39', '1'),
(3, 2, 5, 'y', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-02 08:14:15', '2021-12-02 08:14:15', '1'),
(4, 6, NULL, 'y', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-02 08:54:45', '2021-12-02 08:54:45', '1'),
(5, 4, NULL, 'w', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-09 08:18:53', '2021-12-09 08:18:53', '1'),
(6, 3, NULL, 'dinda', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-09 08:37:10', '2021-12-09 08:37:10', '1'),
(7, 3, NULL, 'h', 'pria', NULL, NULL, NULL, NULL, NULL, 'kawin', 'islam', NULL, '2021-12-09 09:42:41', '2021-12-09 09:42:41', '2');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengantar_pindah`
--

CREATE TABLE `data_pengantar_pindah` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kabupaten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah_pindah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_pengantar_pindah`
--

INSERT INTO `data_pengantar_pindah` (`id`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `no_kk`, `nama_kk`, `alamat`, `desa`, `kecamatan`, `tujuan_alamat`, `tujuan_desa`, `tujuan_kecamatan`, `tujuan_kabupaten`, `tujuan_provinsi`, `jumlah_pindah`) VALUES
(1, 'w', 'w', 'w', '2021-12-07', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_pengantar_umum`
--

CREATE TABLE `data_pengantar_umum` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_kawin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keperluan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_pengantar_umum`
--

INSERT INTO `data_pengantar_umum` (`id`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `status_kawin`, `pekerjaan`, `alamat`, `tujuan`, `keperluan`) VALUES
(1, 'h', '78', 'g', '2014-12-15', 'P', 'islam', 'kawin', 'g', 'g', 'g', 'g'),
(2, 'r', 'y', 'd', '2019-11-14', 'P', 'katholik', 'belum kawin', 'f', 'f', 'f', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `data_permohonan_pindah`
--

CREATE TABLE `data_permohonan_pindah` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kab` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_pemohon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alasan_pindah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_alamat_pindah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kab` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_prov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kodepos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_pindah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_no_kk_pindah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_permohonan_pindah`
--

INSERT INTO `data_permohonan_pindah` (`id`, `no_kk`, `nama_kk`, `alamat`, `desa`, `kecamatan`, `kab`, `provinsi`, `kodepos`, `nik_pemohon`, `tempat_lahir`, `tgl_lahir`, `nama`, `alasan_pindah`, `tujuan_alamat_pindah`, `tujuan_desa`, `tujuan_kecamatan`, `tujuan_kab`, `tujuan_prov`, `tujuan_kodepos`, `jenis_pindah`, `status_kk`, `status_no_kk_pindah`) VALUES
(1, '0920943', 'yu', 'd', 'yu', 'd', 'yu', 'd', '6789', '6790', NULL, '2019-10-23', 'u', 'Perumahan', 'yu', 'ui', 'ui', 'ui', 'ui', '7896', 'Kep. Keluarga dan Seluruh Anggota Keluarga', 'Numpang KK', 'Numpang KK');

-- --------------------------------------------------------

--
-- Table structure for table `data_permohonan_pindah_datang`
--

CREATE TABLE `data_permohonan_pindah_datang` (
  `id` int(11) NOT NULL,
  `tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_pemohon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw_tujuan` int(255) NOT NULL,
  `rt_tujuan` int(255) NOT NULL,
  `hub_keluarga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_surat_pindah_datang`
--

CREATE TABLE `data_surat_pindah_datang` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_pemohon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmpt_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_no_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_nama_kk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_datang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_desa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kabupaten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan_kodepos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_surat_pindah_datang`
--

INSERT INTO `data_surat_pindah_datang` (`id`, `no_kk`, `nama_kk`, `alamat`, `desa`, `kodepos`, `kecamatan`, `kabupaten`, `provinsi`, `nik_pemohon`, `tmpt_lahir`, `tgl_lahir`, `nama`, `tujuan_kk`, `tujuan_no_kk`, `tujuan_nama_kk`, `tgl_datang`, `tujuan_alamat`, `tujuan_desa`, `tujuan_kecamatan`, `tujuan_kabupaten`, `tujuan_provinsi`, `tujuan_kodepos`) VALUES
(1, '090343', 'u', 'y', 'u', '6896', 'y', 'u', 'y', '767807', 'y', '2021-12-15', 'y', 'Nomor KK Tetap', 'y', 'y', '2021-09-14', 'y', 'y', 'y', 'y', 'y', '6575'),
(2, NULL, NULL, 'gt', 'jh', NULL, 'ko', 'kj', 'kj', '987654', 'gt', '2015-02-03', 'elsa', NULL, NULL, NULL, NULL, 'kuii', NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, '7', 'h', NULL, 'h', 'h', 'h', '897', 't', '2002-10-09', 'tr', NULL, NULL, NULL, NULL, 'h', NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, 'yy', 'hh', NULL, 'h', 'gh', 'y', '566', '6', '2021-11-30', 'ty', NULL, NULL, NULL, NULL, 'hh', NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, 'yy', 'hh', NULL, 'h', 'gh', 'y', '566', '6', '2021-11-30', 'ty', NULL, NULL, NULL, NULL, 'hh', NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, 'yy', 'hh', NULL, 'h', 'gh', 'y', '566', '6', '2021-11-30', 'ty', NULL, NULL, NULL, NULL, 'hh', NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, 'yy', 'hh', NULL, 'h', 'gh', 'y', '566', '6', '2021-11-30', 'ty', NULL, NULL, NULL, NULL, 'hh', NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, 'yy', 'hh', NULL, 'h', 'gh', 'y', '566', '6', '2021-11-30', 'ty', NULL, NULL, NULL, NULL, 'hh', NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_surats`
--

CREATE TABLE `kategori_surats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kop_surat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode_surat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_instansi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `margin_bawah` int(11) DEFAULT NULL,
  `margin_atas` int(11) DEFAULT NULL,
  `margin_kekanan` int(11) DEFAULT NULL,
  `paragraf_awal` text COLLATE utf8_unicode_ci NOT NULL,
  `paragraf_akhir` text COLLATE utf8_unicode_ci NOT NULL,
  `nomor_pegawai_ttd` text COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_ttd` text COLLATE utf8_unicode_ci NOT NULL,
  `nama_ttd` text COLLATE utf8_unicode_ci NOT NULL,
  `data_template` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategori_surats`
--

INSERT INTO `kategori_surats` (`id`, `nama`, `kop_surat`, `kode_surat`, `alamat_instansi`, `margin_bawah`, `margin_atas`, `margin_kekanan`, `paragraf_awal`, `paragraf_akhir`, `nomor_pegawai_ttd`, `jabatan_ttd`, `nama_ttd`, `data_template`, `created_at`, `updated_at`) VALUES
(1, 'surat keterangan kelahiran', '<p>p</p>', '472.11/nomer/220/P/X/2020', 'jl besi jangkang kaliurang km 14,4', 1, 1, 1, '<p>p</p>', '<p>p</p>', '11121212', 'Kepala Desa', 'Budiono', '\"{\\\"nama\\\":[\\\"nomer_kartu_keluarga\\\",\\\"nama_kepala_keluarga\\\",\\\"nama_lengkap_bayi\\\",\\\"jenis_kelamin_bayi\\\",\\\"tempat_dilahirkan\\\",\\\"tempat_kelahiran\\\",\\\"hari_dilahirkan\\\",\\\"tanggal_lahir\\\",\\\"jam_kelahiran\\\",\\\"jenis_kelahiran\\\",\\\"kelahiran_ke\\\",\\\"penolong_kelahiran\\\",\\\"berat_bayi\\\",\\\"panjang_bayi\\\",\\\"nik_ibu\\\",\\\"nama_lengkap_ibu\\\",\\\"tempat_tangga_lahir_ibu\\\",\\\"pekerjaan_ibu\\\",\\\"alamat_lengkap_ibu\\\",\\\"kewarga_negaraan_ibu\\\",\\\"tanggal_pernikahan\\\",\\\"nik_ayah\\\",\\\"nama_lengkap_ayah\\\",\\\"tempat_tanggal_lahir_ayah\\\",\\\"umur_ayah\\\",\\\"pakerjaan_ayah\\\",\\\"alamat_ayah\\\",\\\"kewarganegaraan_ayah\\\",\\\"nik_pelapor\\\",\\\"nama_lengkap_pelapor\\\",\\\"tempat_tanggal_lahir_pelapor\\\",\\\"umur_pelapor\\\",\\\"pekerjaan_pelapor\\\",\\\"alamat_pelapor\\\",\\\"tanggal_lapor\\\",\\\"nik_saksi1\\\",\\\"nama_lengkap_saksi1\\\",\\\"umur_saksi1\\\",\\\"alamat_saksi1\\\",\\\"nik_saksi2\\\",\\\"nama_lengkap_saksi2\\\",\\\"umur_saksi2\\\",\\\"alamat_saksi2\\\"],\\\"type\\\":[\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\"]}\"', '2020-11-12 04:40:26', '2020-11-12 05:21:08'),
(2, 'surat keteragan kematian', '<p>p</p>', '472.12/nomer/200', 'jl besi jangkang kaliurang km 14,4', 1, 1, 1, '<p>p</p>', '<p>p</p>', '11111', 'Kepala Desa', 'Budiono', '\"{\\\"nama\\\":[\\\"nama_kepa_keluarga\\\",\\\"nomer_kartu_keluarga\\\",\\\"nik_jenazah\\\",\\\"nama_lengkap_jenazah\\\",\\\"jenis_kelamin_jenazah\\\",\\\"tempat_kelahiran_jenazah\\\",\\\"tanggal_lahir_jenazah\\\",\\\"umur_jenazah\\\",\\\"agama_jenazah\\\",\\\"pekerjaan_jenazah\\\",\\\"alamat_jenazah\\\",\\\"anak_ke\\\",\\\"hari_kematian\\\",\\\"tanggal_kematian\\\",\\\"tempat_meninggal\\\",\\\"jam_meninggal\\\",\\\"sebab\\\",\\\"tempat_kematian\\\",\\\"yang_menerangkan\\\"],\\\"type\\\":[\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\"]}\"', '2020-11-12 06:29:25', '2020-11-12 06:29:25'),
(3, 'surat pengantar', '<p>PEMERINTAH KABUPATEN SLEMAN</p><p>KECAMATAN NGEMPLAK</p><p>PEMERINTAH DESA UMBULMARTANI</p>', '4721.21/210/p/bulan/2020', 'Grogolan, Umbulmartani, Ngemplak, Sleman, DIY 55584', 1, 1, 1, '<p>Yang bertanda tangan di bawah ini, menerangkan Permohonan PIndah Penduduk WNI dengan data debagai berikut:</p>', '<p>Adapun Pemohonan PIndah Penduduk WNI yang bersangkutan sebagaimana terlampir.</p><p>Demikian surat Pengantar Pindah ini dibuat agar digunakan sebagaimana mestinya.</p>', '11121212', 'Kepala Desa', 'Budiono', '\"{\\\"nama\\\":[\\\"nama_lengkap\\\",\\\"tempat_lahir\\\",\\\"tanggal_lahir\\\",\\\"nomor_kartu_keluarga\\\",\\\"alamat_sekarang\\\",\\\"alamat_tujuan_pindah\\\",\\\"jumlah_keluarga__yang_pindah\\\"],\\\"type\\\":[\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\"]}\"', '2020-11-12 06:43:00', '2020-12-05 01:58:56'),
(4, 'surat pengantar pindah', '<p>c</p>', '10/p/X/2020', 'jl besi jangkang kaliurang km 14,4', 1, 1, 1, '<p>Saya yang bertanda tangan di bawah ini</p>\r\n\r\n<p>a. Nama:</p>\r\n\r\n<p>b Jabatan:</p>\r\n\r\n<p>dengan ini menrangkan bahwa:</p>', '<p>Berhubungan dengan keprluan yang bersangkutan, dimohon agar yang berwenang dapt memberikan bantuan serta fasilitas seperlunya.</p>\r\n\r\n<p>Demikina surat keterangan ini dibuat untuk dipergunakan seperlunya.</p>', '11121212', 'ssss12', 'Budiono', '\"{\\\"nama\\\":[\\\"nama\\\",\\\"nik\\\",\\\"tempat_lahir\\\",\\\"tanggal_lahir\\\",\\\"jenis_kelamin\\\",\\\"agama\\\",\\\"status_perkawinan\\\",\\\"pekerjaan\\\",\\\"alamat\\\",\\\"tujuan_ke\\\",\\\"keperluan\\\"],\\\"type\\\":[\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\"]}\"', '2020-11-12 06:48:59', '2020-11-12 06:48:59'),
(5, 'formulir permohonan pindah', '<p>', '1234', 'jl besi jangkang', 1, 1, 1, '<p>', 'p', '1111111', '1111', 'Budiono', '121', '2020-11-22 16:33:03', '2020-11-22 16:33:07'),
(6, 'surat keterangan pindah datang', '<p>', '2222', 'jl besi', 1, 1, 1, 'pp', 'pp', '321', '31', 'Budiono', 'asds', '2020-11-22 16:34:09', '2020-11-22 16:34:15'),
(7, 'formulir permohonan pindah datang', '<p>', '3333', 'jl besi jangkah', 1, 1, 1, '112', '212', '21', '12', 'Budiono', '3232', '2020-11-22 16:34:58', '2020-11-22 16:35:02'),
(8, 'Surat Keterangan Tidak Mampu', '<p>PEMERINTAH KABUPATEN SLEMAN</p><p>KECAMATAN NGAGLIK</p><p>PEMERINTAH KALURAHAN SINDUHARJO</p>', '..../SKTM//..../202..', 'Jalan Kaliurang Km.10,5, Gentan Sinduharjo, Ngaglik, Sleman, 55581', 1, 1, 1, '<td>Saya, yang bertanda tangan di bawah ini Pemerintah Kalurahan Sinduharrjo, Kapanewon Ngaglik, Kabupaten Sleman, menerangkan bahwa:</td>', '<td>Demikian Surat Keterangan Tidak Mampu ini kepada instansi terkait mohon dapat memberikan fasilitas secukupnya.</td>', '123456', 'administrasi', 'wahyu', '\"{\\\"nama\\\":[\\\"nik\\\",\\\"tempat_lahir\\\",\\\"tanggal_lahir\\\",\\\"agama\\\",\\\"status_kawin\\\",\\\"pekerjaan\\\",\\\"alamat\\\",\\\"nama_t\\\":[\\\"nik_t\\\",\\\"tempat_lahir_t\\\",\\\"tanggal_lahir_t\\\",\\\"agama_t\\\",\\\"status_kawin_t\\\",\\\"pekerjaan_t\\\",\\\"alamat_t\\\"],\\\"type\\\":[\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"date\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\",\\\"string\\\"]}\"', '2021-12-09 10:41:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keluarga_datang`
--

CREATE TABLE `keluarga_datang` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l/p` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hub_keluarga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_perm_pindah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `keluarga_datang`
--

INSERT INTO `keluarga_datang` (`id`, `nik`, `nama`, `l/p`, `hub_keluarga`, `status_perkawinan`, `id_perm_pindah`) VALUES
(1, '786', 'y', '2 thn', 'ryry', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `keluarga_perm_datang`
--

CREATE TABLE `keluarga_perm_datang` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masa_berlaku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shdk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_perm_pindah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keluarga_pindah`
--

CREATE TABLE `keluarga_pindah` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masa_berlaku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shdk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_perm_pindah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `keluarga_pindah`
--

INSERT INTO `keluarga_pindah` (`id`, `nik`, `nama`, `masa_berlaku`, `shdk`, `id_perm_pindah`) VALUES
(1, '79io', 'yu', '4567', 'j', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_08_121641_create_kategori_surats_table', 1),
(5, '2020_07_08_121747_create_wargas_table', 1),
(6, '2020_07_08_121821_create_data_pengajuans_table', 1),
(7, '2020_07_08_121841_create_pesanans_table', 1),
(8, '2020_07_10_133820_add_tglpesan_to_pesanan_table', 1),
(9, '2020_09_09_001302_add_margin_instansi_in_kategori_surat', 1),
(10, '2020_09_23_001104_make_isambil_to_pesanan', 1),
(11, '2020_11_05_100133_add_column_to_data_pengajuan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_pengajuan_id` bigint(20) UNSIGNED NOT NULL,
  `pemverifikasi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nomer_surat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: proses, 1: verifikasi, 2: jadi',
  `is_ambil` tinyint(1) NOT NULL DEFAULT 0,
  `tanggal_pesan` date DEFAULT NULL,
  `tanggal_verifikasi` date DEFAULT NULL,
  `tanggal_jadi` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `data_pengajuan_id`, `pemverifikasi_id`, `nomer_surat`, `status`, `is_ambil`, `tanggal_pesan`, `tanggal_verifikasi`, `tanggal_jadi`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '472.11/1/Umbulmartani//XII/2021', '4', 1, '2021-12-02', '2021-12-02', '2021-12-02', '2021-12-01 18:09:30', '2021-12-02 08:04:21'),
(2, 2, NULL, '471.21/2/Umbulmartani/XII/2021', '4', 1, '2021-12-02', '2021-12-02', '2021-12-02', '2021-12-02 06:45:39', '2021-12-02 06:49:23'),
(3, 3, NULL, '472.11/3', '2', 0, '2021-12-02', '2021-12-02', '2021-12-02', '2021-12-02 08:14:15', '2021-12-02 08:14:52'),
(4, 4, NULL, '471.21/4/Umbulmartani/XII/2021', '1', 0, '2021-12-02', '2021-12-02', NULL, '2021-12-02 08:54:45', '2021-12-02 08:55:18'),
(5, 5, NULL, '5/Umbulmartani/XII/2021', '1', 0, '2021-12-09', '2021-12-09', NULL, '2021-12-09 08:18:53', '2021-12-09 10:01:48'),
(6, 6, NULL, '10/6/Umbulmartani/XII/2021', '1', 0, '2021-12-09', '2021-12-09', NULL, '2021-12-09 08:37:10', '2021-12-09 08:37:15'),
(7, 7, NULL, '10/7/Umbulmartani/XII/2021', '1', 0, '2021-12-09', '2021-12-09', NULL, '2021-12-09 09:42:41', '2021-12-09 09:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomer_pegawai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nomer_pegawai`, `nama`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ATT123', 'deni', 'deni@gmail.com', NULL, '$2y$10$TQiJZtFAPdK1iFWFc8I0ZOuByVvbLitDNKl7AZNz7fsLWjn64zWeW', 'staff', NULL, '2020-11-12 04:36:29', '2020-12-04 04:09:22'),
(2, '19083', 'admin', 'admin@gmail.com', NULL, '$2y$10$igCYn0CJzleNwo7mhb1J5.q14GKM9L5sLuOs89ToWEBWGsoM2eksu', 'admin', NULL, '2020-12-04 03:55:29', '2020-12-04 03:55:29'),
(3, 'k123', 'kades', 'kades@gmail.com', NULL, '$2y$10$sB5mSGo0Wg0PLY17m5NmLuABYWF2uPfs.Xe6.mv5l69DNAg3rs9fW', 'kades', NULL, '2020-12-04 03:57:28', '2020-12-04 03:57:28'),
(4, 'stf123', 'staf', 'staf@gmail.com', NULL, '$2y$10$31df5y5/oe6mZVAMfoBuS.d.Eui5BNqPISg9xcjAF796QAUZclp86', 'staff', NULL, '2020-12-04 03:58:09', '2020-12-04 03:58:09'),
(5, '0987678904', 'dindaa', 'dindasgo1638@gmail.com', NULL, '$2y$10$Y8FktAC.IJ2YxImyKha9NOKXBXvtGFjmOHiZsrTeQ1YT2tb9ClD1C', 'admin', NULL, '2021-12-02 06:21:25', '2021-12-02 06:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `wargas`
--

CREATE TABLE `wargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wargas`
--

INSERT INTO `wargas` (`id`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'warga', 'warga@gmail.com', '$2y$10$PcySRO8liqYf5HXzXllVRe5Dpb1ra/2jTFISBd9qN58i590pNqP8.', '2020-11-16 12:50:08', '2020-11-16 12:50:08'),
(3, 'akuwarga', 'akuwarga@gmail.com', '$2y$10$8skzn4CJaoFfBacBk4scpuJCQBWQhv5SV2QEEYo6aPKSx0G/Anl3e', '2020-11-23 15:03:07', '2020-11-23 15:03:07'),
(4, 'warga1', 'warga1@gmail.com', '$2y$10$b1S3shrDfxO./qMhXCDMQeI9aaw..lmkEOFYiqpjz7cvsr8u6qXKe', '2020-12-03 03:54:55', '2020-12-03 03:54:55'),
(5, 'Yuna', 'yunayuan28@gmail.com', '$2y$10$3U7I/5fmgcNgIbO59pkVA.qcfdQgaD3YSil9lPc7RhWYbLJRpSVA2', '2021-12-01 16:56:20', '2021-12-01 16:56:20'),
(6, 'f', 'warga123@gmail.com', '$2y$10$Z.3VMiHKCo24V5NwqO6.BuwAkQi4TIy1mS/jCnDaSLNNFeOT4tEn.', '2021-12-09 12:02:01', '2021-12-09 12:02:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kelahiran`
--
ALTER TABLE `data_kelahiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kematian`
--
ALTER TABLE `data_kematian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_ket_tidakmampu`
--
ALTER TABLE `data_ket_tidakmampu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengajuans`
--
ALTER TABLE `data_pengajuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengantar_pindah`
--
ALTER TABLE `data_pengantar_pindah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengantar_umum`
--
ALTER TABLE `data_pengantar_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_permohonan_pindah`
--
ALTER TABLE `data_permohonan_pindah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_permohonan_pindah_datang`
--
ALTER TABLE `data_permohonan_pindah_datang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_surat_pindah_datang`
--
ALTER TABLE `data_surat_pindah_datang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_surats`
--
ALTER TABLE `kategori_surats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarga_datang`
--
ALTER TABLE `keluarga_datang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarga_perm_datang`
--
ALTER TABLE `keluarga_perm_datang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarga_pindah`
--
ALTER TABLE `keluarga_pindah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wargas`
--
ALTER TABLE `wargas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wargas_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kelahiran`
--
ALTER TABLE `data_kelahiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kematian`
--
ALTER TABLE `data_kematian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_ket_tidakmampu`
--
ALTER TABLE `data_ket_tidakmampu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_pengajuans`
--
ALTER TABLE `data_pengajuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_pengantar_pindah`
--
ALTER TABLE `data_pengantar_pindah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_pengantar_umum`
--
ALTER TABLE `data_pengantar_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_permohonan_pindah`
--
ALTER TABLE `data_permohonan_pindah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_permohonan_pindah_datang`
--
ALTER TABLE `data_permohonan_pindah_datang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_surat_pindah_datang`
--
ALTER TABLE `data_surat_pindah_datang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_surats`
--
ALTER TABLE `kategori_surats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `keluarga_datang`
--
ALTER TABLE `keluarga_datang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keluarga_perm_datang`
--
ALTER TABLE `keluarga_perm_datang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluarga_pindah`
--
ALTER TABLE `keluarga_pindah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wargas`
--
ALTER TABLE `wargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
