-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2020 at 02:47 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `childgrowthtracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `immunization_schedule`
--

CREATE TABLE `immunization_schedule` (
  `schedule_id` int(10) NOT NULL,
  `schedule_title` varchar(255) NOT NULL,
  `schedule_desc` text NOT NULL,
  `schedule_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immunization_schedule`
--

INSERT INTO `immunization_schedule` (`schedule_id`, `schedule_title`, `schedule_desc`, `schedule_time`) VALUES
(1, 'Hepatitis B - 1', 'Hepatitis B adalah infeksi menular yang menyerang hati (liver) dan bisa berujung pada kanker hati atau sirosis.Â Vaksin Hepatitis BÂ harus didapatÂ segera setelah bayi baru lahir, paling lambat 12 jam setelah kelahiran. Namun, bayi harus mendapatkan suntikan vitamin K1 dulu 30 menit sebelum divaksin.\n\nSelain untuk melindungi bayi dari penularan hepatitis B dari orang lain di masa depannya, vaksin ini sekaligus berfungsi mencegah risiko penularan dari ibu ke anak saat persalinan.Â \n\n', '0'),
(6, 'Polio', 'Polio adalah infeksi virus menular yang menyerang sistem saraf pusat di otak. Polio menyebabkan badan pengidapnya lumpuh sehingga juga umum dikenal sebagai penyakit lumpuh layu. Pada kasus yang lebih parah, polio sampai mengganggu pernapasan dan proses menelan sehingga dapat berakibat fatal bila tidak diobati.\n\nItu kenapa bayi perlu mendapatkanÂ vaksin polioÂ secepatnya sebelum berusia genap 1 tahun.\n\n', '0'),
(7, 'BCG', 'Vaksin BCG adalah imunisasi untuk mencegah penyakit tuberkulosis (TBC). TBC adalah penyakit menular berbahaya yang menyerang saluran pernapasan, dan mungkin menyebar ke bagian tubuh lainnya jika tidak segera diobati.\n\nBerbeda dengan beberapa jenis imunisasi di atas, vaksin BCG cukup diberikan 1 kali sebelum bayi berusia 3 bulan.\n\n', '1'),
(8, 'Hepatitis B-2', 'Imunisasi Hepatitis yang ke dua dianjurkan dilakukan pada jarak 4 minggu dari imunisasi yang pertama.', '2'),
(9, 'Polio - 1', 'Imunisasi Polio 1 merupakan imunisasi polio ke dua, imunisasi yang dilakukan pada waktu usia bayi 2 bulan. ', '2'),
(11, 'DPT - 1', 'Imunisasi DPT dilakukan untuk pencegahan terhadap 3 penyakit yaitu Difteri, Pertusis, dan Tetanus.', '2'),
(12, 'HiB - 1', 'Imunisasi HiB dapat berupa vaksin PRP-T (konjugasi) diberikan pada usia balita 2, 4, dan 6 bulan, dan diulang pada usia 18 bulan.', '12'),
(13, 'PCV - 1', 'PCV (Pneumococcal Conjugate Vaccine) atau biasa disebut juga sebagai vaksin pnemokokus. Vaksin ini berisi protein konjugasi yang bertujuan mencegah penyakit akibat infeksi kuman pneumokokus. Dan imunisasi PCV pertama yang diberikan saat bayi berusia 2 bulan', '2'),
(14, 'Rotavirus - 1', 'Imunisasi Rotavirus yang pertama dilakukan saat bayi berusia 2 bulan. Gejala rotavirus adalah diare yang disebabkan oleh rotavirus.', '27'),
(15, 'Hepatitis B-3', 'Imunisasi hepatitis yang ketiga disarankan dilakukan pada bulan ketiga. Jarak imunisasi ke 2 dengan imunisasi yang ke 3 minimal 2 bulan.', '24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `user_status`) VALUES
(1, 'fikri011100', 'fikri.im@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(2, 'fikri_im', 'fikri.iaim@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(3, 'fikri_im011100', 'fikri.iam@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(4, 'ggiani', 'ggiani@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(5, 'mecca', 'muhamadzihan93@gmail.com', '9d6c22cb45efd1f7275c6f3d893103d4', 0),
(6, 'Aline', 'sarlin .anasthasia83@gmail.com', '48a723e47ecd5da18224fe35caf65757', 0),
(7, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `immunization_schedule`
--
ALTER TABLE `immunization_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `immunization_schedule`
--
ALTER TABLE `immunization_schedule`
  MODIFY `schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
