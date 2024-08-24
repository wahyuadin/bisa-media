-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Agu 2024 pada 10.10
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
-- Database: `sistem_sederhana`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukus`
--

CREATE TABLE `bukus` (
  `id` char(36) NOT NULL,
  `kategori_id` char(36) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `thn_terbit` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bukus`
--

INSERT INTO `bukus` (`id`, `kategori_id`, `judul`, `penulis`, `penerbit`, `thn_terbit`, `isbn`, `jumlah`, `created_at`, `updated_at`) VALUES
('9cd688f0-7c18-44af-8e07-6779d5ac0bcd', '9cd68814-314e-479b-8e0b-35cb262389ad', 'Teknik tri fokussteve snyder : tingkatkan kecepatan efektif membaca (KEM) dalam pembelajaran Bahasa Indonesia', 'Chusnul Chotimah ; editor, tim Kun Fayakun', 'Kun Fayakun', '2018', '978-623-343-706-6', 10, '2024-08-23 22:32:23', '2024-08-23 22:36:37'),
('9cd6893a-045b-4e8e-869d-ae4766c99738', '9cd68814-314e-479b-8e0b-35cb262389ad', 'Membaca cepat cara tepat memanjat level KEM dan KPM', 'Ellis Herlislianti', 'Delta Pustaka', '2020', '978-623-6513-61-3', 20, '2024-08-23 22:33:12', '2024-08-23 22:36:49'),
('9cd6899b-b3b1-4618-8652-227b08e73deb', '9cd687fa-72a9-44b6-a693-9c8ee56a09d4', 'Pinggon & koteka dan kem : cerita rakyat Suku Yali', 'Dessi Sianta Faluk dan Dessilia Lilis Anugerah Loho ; editor, Gasper Liauw', 'Karpindo', '2016', '978-602-74693-9-6', 5, '2024-08-23 22:34:16', '2024-08-23 22:34:16'),
('9cd68a48-1fd6-40f0-8ba3-634a52a2ba3f', '9cd68814-314e-479b-8e0b-35cb262389ad', 'Membangun kawasan ekonomi masyarakat (KEM)', 'penulis, Muhammad Hartarto...[et al.] ; editor, Nurliana Cipta Apsari, Feri Anugrah', 'CV. Instan Grafika Sejahtera', '2021', '978-623-98318-3-7', 11, '2024-08-23 22:36:09', '2024-08-24 06:43:32');

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
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
('9cd687fa-72a9-44b6-a693-9c8ee56a09d4', 'diksi', '2024-08-23 22:29:42', '2024-08-23 22:29:42'),
('9cd68808-0b5d-410c-8805-113d40702c5a', 'novel', '2024-08-23 22:29:51', '2024-08-23 22:29:51'),
('9cd68814-314e-479b-8e0b-35cb262389ad', 'Akademik', '2024-08-23 22:29:59', '2024-08-23 22:29:59');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_22_210234_create_kategoris_table', 1),
(6, '2024_08_22_210246_create_bukus_table', 1),
(7, '2024_08_23_042300_create_pinjams_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjams`
--

CREATE TABLE `pinjams` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `buku_id` char(36) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('pending','accept','reject') NOT NULL DEFAULT 'pending',
  `status_buku` enum('dikembalikan','dipinjam','telat') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pinjams`
--

INSERT INTO `pinjams` (`id`, `user_id`, `buku_id`, `tgl_pinjam`, `tgl_pengembalian`, `status`, `status_buku`, `created_at`, `updated_at`) VALUES
('9cd737ee-a8ed-4d15-8730-e740f2a069c3', '9cd73794-bc68-44b9-acec-1beb3e715f07', '9cd68a48-1fd6-40f0-8ba3-634a52a2ba3f', '2024-08-24', '2024-08-31', 'accept', 'dikembalikan', '2024-08-24 06:41:42', '2024-08-24 06:43:32'),
('9cd73a0b-dbe5-41c3-8dd9-867ef7f76d75', '9cd73794-bc68-44b9-acec-1beb3e715f07', '9cd6899b-b3b1-4618-8652-227b08e73deb', '2024-08-24', '2024-08-31', 'pending', NULL, '2024-08-24 06:47:37', '2024-08-24 06:47:37'),
('9cd73d11-3406-41f1-9cc0-fc437cc784a0', '9cd73c33-d1d7-4a5d-9b61-2b5e5499b93f', '9cd68a48-1fd6-40f0-8ba3-634a52a2ba3f', '2024-08-24', '2024-09-20', 'pending', NULL, '2024-08-24 06:56:04', '2024-08-24 06:56:04'),
('9cd73e15-3be5-443d-bc18-b64d8c7c0190', '9cd73c33-d1d7-4a5d-9b61-2b5e5499b93f', '9cd68a48-1fd6-40f0-8ba3-634a52a2ba3f', '2047-08-07', '2024-08-15', 'pending', NULL, '2024-08-24 06:58:54', '2024-08-24 06:58:54'),
('9cd73e15-9ead-4cc4-86f7-491274d9b335', '9cd73c33-d1d7-4a5d-9b61-2b5e5499b93f', '9cd68a48-1fd6-40f0-8ba3-634a52a2ba3f', '2047-08-07', '2024-08-15', 'pending', NULL, '2024-08-24 06:58:55', '2024-08-24 06:58:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('9cd51023-5c7b-4271-9189-efec9314c05b', 'admin', 'admin', 'admin@mail.com', 'admin', NULL, '$2y$10$JWNlHDhTDL1Gh75R62Yfo.4iG69Dn55M/vaL6hEAyzrnVGoKFmiHa', NULL, '2024-08-22 21:58:47', '2024-08-22 23:36:05'),
('9cd51023-7925-453c-908a-1e34d8d6bce7', 'user', 'user', 'user@mail.com', 'user', NULL, '$2y$10$sCuISE3Sq.3zfpxXX2eKy.ZHwxuCEpd.4E4eLCteC73HDPMiBFhHW', NULL, '2024-08-22 21:58:47', '2024-08-22 21:58:47'),
('9cd73794-bc68-44b9-acec-1beb3e715f07', 'Wahyuadin', 'wahyuadin', 'wahyuadinugraha2@gmail.com', 'user', NULL, '$2y$10$d5O/EwGAX6OnYiNqkgiBEuOKldpYNm3wuOQ1mE6P55KEG5BQDcoqK', NULL, '2024-08-24 06:40:43', '2024-08-24 06:40:43'),
('9cd73c33-d1d7-4a5d-9b61-2b5e5499b93f', 'Edi Supono', 'edi supono', 'edisupono@gmail.com', 'user', NULL, '$2y$10$gCFVIz4pvGGMSsx1PRrp8uL8kVJahO14FgpYfWHCDM9mR9CWq15q2', NULL, '2024-08-24 06:53:39', '2024-08-24 06:53:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bukus_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pinjams`
--
ALTER TABLE `pinjams`
  ADD KEY `pinjams_user_id_foreign` (`user_id`),
  ADD KEY `pinjams_buku_id_foreign` (`buku_id`);

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
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bukus`
--
ALTER TABLE `bukus`
  ADD CONSTRAINT `bukus_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`);

--
-- Ketidakleluasaan untuk tabel `pinjams`
--
ALTER TABLE `pinjams`
  ADD CONSTRAINT `pinjams_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pinjams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
