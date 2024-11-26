-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 06.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppcobaa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('user1@gmail.com|127.0.0.1', 'i:1;', 1731373961),
('user1@gmail.com|127.0.0.1:timer', 'i:1731373961;', 1731373961);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(1, 'XI RPL', 'Pemrograman', '2024-11-11 17:28:23', '2024-11-11 17:28:23'),
(2, 'X TITL A', 'Listrik', '2024-11-11 17:28:42', '2024-11-11 17:28:42'),
(3, 'Kimia Analis', 'Analisis', '2024-11-11 17:29:28', '2024-11-11 17:29:28'),
(4, 'XI KIMIA INDUSTRI', 'Industri', '2024-11-12 18:17:45', '2024-11-12 18:17:45'),
(5, 'XII Pengelasan', 'Las', '2024-11-12 18:18:05', '2024-11-12 18:18:05'),
(6, 'X Pemesinan', 'Mesin', '2024-11-12 18:18:31', '2024-11-12 18:18:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_0000001_create_users_table', 1),
(2, '0001_01_01_0000002_create_cache_table', 1),
(3, '0001_01_01_0000003_create_jobs_table', 1),
(4, '2024_09_19_001454_create_role', 1),
(5, '2024_09_19_001751_update_user', 1),
(6, '2024_09_19_013909_update_roles', 1),
(7, '2024_10_17_012557_create_kelas_table', 1),
(8, '2024_10_17_031729_create_spp_table', 1),
(9, '2024_10_18_031051_create_siswa_table', 1),
(10, '2024_11_11_072317_create_pembayaran', 1),
(11, '2024_12_19_013909_update_kelas', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(10) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(1, 2, '12345670', '2024-11-13', 'Februari', '2024', 500000, '2024-11-12 16:43:21', '2024-11-12 16:43:21'),
(2, 2, '123456', '2024-11-13', 'Januari', '2024', 300000, '2024-11-12 16:46:28', '2024-11-12 17:22:27'),
(5, 2, '1313213341', '2024-07-22', 'Mei', '2024', 250000, '2024-11-12 16:52:37', '2024-11-12 17:25:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('Admin','Petugas','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `created_at`, `updated_at`, `role`) VALUES
(1, 2, '2024-11-11 17:17:57', '2024-11-11 17:17:57', 'Admin'),
(2, 3, '2024-11-11 17:18:32', '2024-11-11 17:18:32', 'Petugas'),
(3, 4, '2024-11-11 17:19:11', '2024-11-11 17:19:11', 'Admin'),
(4, 5, '2024-11-11 17:19:59', '2024-11-11 17:19:59', 'Admin'),
(5, 6, '2024-11-11 17:20:45', '2024-11-11 17:20:45', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8SsO2s3Xe3t1p2tGUHCqOtfciLFQfiyKcFzLgRIY', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTFkwVFE3ckRodGpJV3VsUkROT2szSG5MNXBwZmlpM0hsNXYzQlVLRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1731468752),
('DFfsAcHNZMnJimTtyutd5rP7imYhR9DqrRHazBHs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHBWOTVrNVQ2QVRuN3J2Q00wOHlDNXQ2Mmhvd2QxZUwxQ3p4bXJkbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732587838);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `created_at`, `updated_at`) VALUES
('123456', '1234567', 'Tegar', 2, 'Berbas', '123456789', 2, '2024-11-11 17:34:09', '2024-11-11 17:34:09'),
('12345670', '12345678', 'Samuel Suwuh', 1, 'Kanaan', '123456789', 3, '2024-11-11 17:32:25', '2024-11-11 17:32:42'),
('1313213341', '13231321', 'Tegarruk', 3, 'rudal', '088887272323', 1, '2024-11-12 17:15:24', '2024-11-12 17:15:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 2023, 250000, '2024-11-11 17:31:28', '2024-11-11 17:31:28'),
(2, 2023, 300000, '2024-11-11 17:31:36', '2024-11-11 17:31:36'),
(3, 2024, 500000, '2024-11-11 17:31:44', '2024-11-11 17:31:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nama_lengkap`, `hp`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vikoo', 'Vikoo', '123456789', 'Vikoo@gmail.com', '2024-11-11 17:11:29', '$2y$12$z/6rEb1Ygy1F3OVq2YBfROyvjzWi0v3bbS1JrD4nbXnC2.iuGQGb6', NULL, '2024-11-11 17:11:29', '2024-11-11 17:11:29'),
(2, 'admincihuy', 'admin1', '123456789', 'admin@gmail.com', NULL, '$2y$12$/D2PB3Gajy4fh5QB/xErvODf0jP.4o/gXNEu.zhcBJTQB4NB4/DAS', NULL, '2024-11-11 17:17:57', '2024-11-11 17:17:57'),
(3, 'petugas', 'petugas1', '123456789', 'petugas@gmail.com', NULL, '$2y$12$pcwXtcuWo8Nni4lGK54m1eQUK0HYaDNVjvMJ.qY7fFjXfm.Ivl16m', NULL, '2024-11-11 17:18:32', '2024-11-11 17:18:32'),
(4, 'samuel', 'samueljelek', '123456789', 'samuel@gmail.com', NULL, '$2y$12$Ie.Hj8FSy5D5jdPrTM2r3eec2s737TUi0fvOBDN5hBVMA2MvyMeUi', NULL, '2024-11-11 17:19:11', '2024-11-11 17:19:11'),
(5, 'adminn', 'admin2', '123456789', 'admin2@gmail.com', NULL, '$2y$12$WjSdMhu9nMi50to5JptDWO7.rSobivVkovPhe/bYBQq493CuWqTa2', NULL, '2024-11-11 17:19:59', '2024-11-11 17:19:59'),
(6, 'nabil', 'nabilkhairullah', '123456789', 'nabil@gmail.com', NULL, '$2y$12$Yfy781vwCSNI5mli3p0PZuH35jwf1MVnTW.OXBJ7G1ctT6XHS5IY2', NULL, '2024-11-11 17:20:45', '2024-11-11 17:20:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `pembayaran_id_petugas_foreign` (`id_petugas`),
  ADD KEY `pembayaran_nisn_foreign` (`nisn`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD KEY `siswa_id_kelas_foreign` (`id_kelas`),
  ADD KEY `siswa_id_spp_foreign` (`id_spp`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_nisn_foreign` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_id_spp_foreign` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
