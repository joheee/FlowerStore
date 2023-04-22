-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2023 pada 13.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_flowerstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_customer`
--

CREATE TABLE `ms_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ms_customer`
--

INSERT INTO `ms_customer` (`customer_id`, `customer_name`) VALUES
(12, 'Adam Warlock'),
(13, 'Derrick William');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_flower`
--

CREATE TABLE `ms_flower` (
  `flower_id` int(11) NOT NULL,
  `flower_image` text NOT NULL,
  `flower_title` varchar(100) NOT NULL,
  `flower_price` int(11) NOT NULL,
  `flower_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ms_flower`
--

INSERT INTO `ms_flower` (`flower_id`, `flower_image`, `flower_title`, `flower_price`, `flower_desc`) VALUES
(1, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Orchids-min-300x200.jpg', 'Alstroemeria', 43000, 'The alstroemeria, also called the Peruvian lily, features streaked or speckled blossoms in a range of colors, including white, yellow, orange, pink, and red. With their trumpet-like appearance, they resemble lilies and grow to one to three feet tall.'),
(2, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Gerbera-Daisies-min-300x200.jpg', 'Calla Lily', 75000, 'Calla lilies come in a variety of different colors, from snow white to bright pink. They feature a beautiful trumpet shape with smooth, sword-like foliage.'),
(3, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Carnations-min-300x200.jpg', 'Carnation', 81000, 'A double layer of petals with crinkly edges are the chief characteristics of carnations. They come in a wide variety of colors and can be dyed to practically any color and shade on earth.'),
(4, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Tulips-min-300x200.jpg', 'Tulip', 92000, 'Tulips have ruffled petals with streaks of colors and are available in a variety of colors including pink, red, yellow, orange, purple, and white. There are a wide variety of types of tulips, and they are often cultivated to achieve different characteristics.'),
(5, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Peonies-min-300x200.jpg', 'Peony', 125000, 'Peonies have large, wonderfully fragrant flowers, in colors including everything from purple and pink to darker shades of red. They have a short blooming season, which only lasts about a week or so.'),
(6, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Aster-min-300x200.jpg', 'Aster', 88000, 'Blooming in late summer and early fall, asters come with a bright yellow center and a variety of petal hues, including blue, purple, pink, and white. They attract bees and butterflies and are an important source of late-season nectar.'),
(7, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Chrysanthemum-min-300x200.jpg', 'Chrysanthemum', 79000, 'Chrysanthemums are staples in fall gardens. They are best known for their bright flowers in every color of the rainbow and a full, dramatic display of blooms in a round semi-circle above the foliage.'),
(8, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Snapdragon-min-300x200.jpg', 'Snapdragon', 150000, 'Snapdragons can range from six inches to three feet depending on the variety. Flowers grow on tall, narrow spikes above the foliage and come in all colors of the rainbow from pastel tones to bold, saturated colors.'),
(9, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Dahlias-min-300x200.jpg', 'Iris', 129000, 'Iris flowers have an unusual, but beautiful appearance. The petals resemble a fleur-de-lis, with some petals standing straight up while others slope down atop long, erect stems.'),
(10, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Daffodil-min-300x200.jpg', 'Daffodil', 65000, 'Bright and fragrant flowers, daffodils bloom early in the spring. The blossoms feature six petals and a trumpet in the middle and are typically a combination of bright yellow and white.'),
(11, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Periwinkle-min-300x200.jpg', 'Periwinkle', 96000, 'Periwinkle is often used by gardeners as an evergreen ground cover due to its dark green foliage. Its flowers are purple, blue, or white, depending on the variety.'),
(12, 'https://ediblebloglive.wpengine.com/wp-content/uploads/2020/09/Poppy-min-300x200.jpg', 'Poppy', 199000, 'Bright red in color with big, showy flowers and feathery green foliage, poppies are a beautiful flower. Poppies are also commonly often worn on Memorial Day to honor fallen soldiers.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ammount` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `flower_id`, `customer_id`, `ammount`, `transaction_date`) VALUES
(21, 7, 12, 5, '2023-04-22 12:19:56'),
(22, 6, 12, 1, '2023-04-22 12:19:17'),
(23, 8, 12, 1, '2023-04-22 12:19:17'),
(24, 6, 13, 1, '2023-04-22 12:19:38'),
(25, 7, 13, 1, '2023-04-22 12:19:38'),
(26, 8, 13, 1, '2023-04-22 12:19:38'),
(27, 3, 12, 3, '2023-04-22 18:44:41'),
(28, 2, 12, 2, '2023-04-22 18:44:41'),
(29, 1, 12, 1, '2023-04-22 18:44:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ms_customer`
--
ALTER TABLE `ms_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `ms_flower`
--
ALTER TABLE `ms_flower`
  ADD PRIMARY KEY (`flower_id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `flower_id` (`flower_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ms_customer`
--
ALTER TABLE `ms_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `ms_flower`
--
ALTER TABLE `ms_flower`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`flower_id`) REFERENCES `ms_flower` (`flower_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ms_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
