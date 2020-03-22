-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2020 at 04:26 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuln`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'chan', 'chan');

-- --------------------------------------------------------

--
-- Table structure for table `bukutamu`
--

CREATE TABLE `bukutamu` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukutamu`
--

INSERT INTO `bukutamu` (`id`, `tanggal`, `nama`, `pesan`) VALUES
(6, '2020-03-06 10:13:03', 'fajar', 'Website ini sangat indah. maju terus developer!!'),
(7, '2020-03-06 10:13:45', 'fajri', 'hello RIZKY. fucek ama lu!!');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `konten` text,
  `tanggal` datetime DEFAULT NULL,
  `author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `konten`, `tanggal`, `author`) VALUES
(1, 'Manfaat Menanam Pohon untuk Diri Sendiri dan Generasi Mendatang ', '<p>Polusi yang sudah menutupi udara seolah jadi makanan sehari-hari. Semakin lama, udara ini bisa membuat tubuh kita semakin sakit. Selain membatasi penggunaan kendaraan pribadi, salah satu solusi untuk membuat udara lebih segar adalah dengan menanam lebih banyak pohon. Manfaat menanam pohon pun tak hanya berhubungan dengan kesehatan, tapi juga lingkungan kita.\r\n<br>\r\nManfaat menanam pohon mungkin tidak bisa langsung kita rasakan dalam waktu singkat. Namun di masa depan, usaha ini akan sangat berguna bagi anak-anak dan cucu kita kelak, agar mereka bisa tumbuh di lingkungan dengan udara yang bersih dan bebas dari penyakit.\r\nManfaat menanam pohon untuk kesehatan dan lingkungan\r\n<br>\r\nAda banyak manfaat menanam pohon, mulai dari membersihkan udara hingga meredakan stres. Lebih lanjut, berikut ini penjelasannya untuk Anda.\r\nSalah satu manfaat menanam pohon adalah membuat udara jadi segar\r\nManfaat menanam pohon salah satunya adalah membuat udara jadi segar\r\n<br>1. Membuat udara jadi lebih segar<br>\r\n\r\nPohon adalah penyaring udara di bumi. Dengan daun dan batangnya, pohon menyerap gas dan komponen berbahaya di udara lalu mengeluarkan oksigen, sehingga membantu kita untuk bernapas.\r\n\r\nDi kota-kota besar, pohon biasanya juga menyerap gas polusi yang dihasilkan kendaraan seperti nitrogen oksida, ozon, dan karbon monoksida. Selain itu, debu dan asap lainnya pun akan disingkirkan olehnya.\r\n<br>2. Menjaga kesehatan mental<br>\r\n\r\nTinggal di area yang rindang dan banyak pepohonan, baik untuk kesehatan mental. Mendekatkan diri dengan alam, juga bisa meningkatkan kemampuan kognitif dan mengurangi stres yang kita rasakan.\r\n<br>3. Mengurangi paparan sinar UV ke kulit<br>\r\n\r\nDi negara tropis seperti Indonesia dengan paparan sinar matahari yang berlimpah, ada satu risiko yang juga meningkat, yaitu tingginya paparan sinar ultraviolet. Padahal paparan sinar tersebut secara terus-menerus ke kulit, bisa meningkatkan risiko terjadinya kanker kulit.\r\n\r\nPohon mampu mengurangi paparan sinar UVB sebanyak 50% dan menurunkan risiko kita terkena dampak negatif sinar tersebut.\r\n<br>4. Mengurangi dampak perubahan iklim<br>\r\n\r\nSalah satu penyebab terjadinya perubahan iklim adalah banyaknya kadar karbon dioksida di udara. Pohon bisa membantu mengurangi kadarnya secara siginifikan dan melepas oksigen ke udara. Sehingga selain mencegah terjadinya perubahan iklim, pohon juga sebenarnya telah membantu kita bertahan hidup.\r\nManfaat menanam pohon adalah untuk kurangi polusi air\r\nMenanam pohon bisa cegah polusi air\r\n<br>5. Mencegah polusi air<br>\r\n\r\nSaat hujan lebat atau badai, air yang turun ke bumi berisiko membawa polutan berupa fosfor dan nitrogen. Jika tidak ada pohon, polutan tersebut akan langsung mengalir ke laut tanpa penyaringan.\r\n\r\nSementara itu, jika banyak pohon yang ditanam, maka air hujan yang turun akan tersaring dan mampu meresap ke dalam tanah. Dengan begitu, ia tidak akan mencemari laut.\r\n<br>6. Menambah cadangan air tanah<br>\r\n\r\nPohon bisa melindungi air yang disimpan di dalam tanah agar tidak terlalu cepat menguap. Sehingga, cadangan air tanah kita bisa tetap terjaga. Selain itu, pohon hanya membutuhkan 15 galon air untuk bertahan setiap minggunya, tapi bisa membantu menghasilkan 200-450 galon air per hari.\r\n<br>7. Menjaga populasi makhluk hidup<br>\r\n\r\nSatu batang pohon, bisa menjadi rumah dari puluhan bahkan ratusan jenis makhluk hidup mulai dari burung, serangga, reptil, jamur, dan termasuk tumbuhan-tumbuhan lainnya. Tanpa adanya pohon, berbagai makhluk hidup tersebut akan kehilangan rumahnya.\r\n<br>8. Mencegah banjir<br>\r\n\r\nAkhir-akhir ini berita tentang banjir selalu menghiasi layar kaca. Banyak sekali orang yang terdampak musibah ini, dan harus kehilangan harta bendanya. Sehingga, langkah pencegahan banjir perlu dilakukan dari sekarang.\r\n\r\nMencegah banjir adalah tanggung jawab kita semua. Anda bisa memulainya dengan langkah-langkah sederhana seperti tidak membuang sampah sembarangan dan mulai menanam pohon, setidaknya di halaman rumah sendiri.\r\n\r\nSelain itu disebutkan bahwa menanam pohon di area bantaran kali bisa mengurangi ketinggian air banjir hingga 20 persen.\r\n<br>9. Mencegah erosi tanah<br>\r\n\r\nApa yang terjadi jika tanah sampai erosi? Bencana longsor akan muncul. Sebab, pada tanah yang gersang dan lapang tanpa pohon, hujan lebat bisa memberikan tekanan yang begitu besar langsung ke dasar. Jika ada pohon, maka tekanan dari hujan lebat tersebut bisa tersaring. Hasilnya, tekanan tersebut sudah berkurang ketika sampai tanah. Sehingga, risiko longsor pun rendah.</p>\r\n<br>\r\n<br>\r\nsrc:https://www.sehatq.com/artikel/manfaat-menanam-pohon-untuk-diri-sendiri-dan-generasi-mendatang', '2020-03-06 08:38:04', 'fajar'),
(2, '11 Faktor Ini Bisa Menjadi Penyebab Penyakit Jantung ', 'Penyakit jantung disebabkan oleh kerusakan pada sebagian atau seluruh jantung, kerusakan pada arteri koroner, atau pasokan oksigen yang buruk ke jantung. Beberapa jenis penyakit jantung, misalnya kardiomiopati hipertrofik, bersifat genetik. Sementara, penyakit jantung bawaan dapat terjadi sebelum seseorang dilahirkan.\r\n<br>\r\nAda banyak faktor yang dapat meningkatkan risiko Anda mengalami penyakit jantung. Dengan memahaminya, Anda setidaknya dapat menurunkan risiko terkena penyakit ini. Adapun faktor penyebab penyakit jantung yang mungkin dimiliki oleh banyak orang, di antaranya:\r\n<br><br>\r\n    Tekanan darah tinggi\r\n<br>\r\nMemiliki tekanan darah tinggi menjadi faktor risiko utama penyakit jantung. Kondisi ini terjadi ketika tekanan darah di arteri dan pembuluh darah terlalu tinggi. Jika tidak dikendalikan, tekanan darah yang tinggi dapat memengaruhi jantung, ginjal, dan otak.\r\n<br><br>\r\n    Kadar kolesterol tinggi\r\n<br>\r\nMemiliki kadar kolesterol jahat (LDL) yang tinggi dan kadar kolesterol baik (HDL) yang rendah dapat meningkatkan risiko Anda terkena penyakit jantung. Kolesterol dapat menumpuk di dinding arteri hingga menyebabkan penyempitan pada area tersebut dan mengurangi aliran darah ke jantung, otak, serta berbagai bagian tubuh lainnya.\r\n<br><br>\r\n    Diabetes\r\n<br>\r\nMenderita diabetes juga menjadi salah satu faktor risiko terkena penyakit jantung. Ketika kadar glukosa darah yang tinggi tidak dikelola dengan baik, kondisi tersebut dapat meningkatkan jumlah plak yang terbentuk di dalam dinding pembuluh darah. Imbasnya, aliran darah ke jantung bisa terhambat hingga berhenti. \r\n<br><br>\r\n    Obesitas\r\n<br>\r\nApakah Anda mengalami obesitas? Jika iya, Anda perlu waspada karena kondisi tersebut dapat meningkatkan risiko Anda terkena berbagai penyakit, termasuk penyakit jantung. Kadar lemak yang tinggi pada penderita obesitas dapat memberi efek resistensi terhadap hormon insulin. Selain itu, obesitas juga dapat meningkatkan kadar kolesterol LDL yang memicu terjadinya penyakit jantung.\r\n<br><br>\r\n    Usia\r\n<br>\r\nTahukah Anda jika risiko penyakit jantung meningkat seiring bertambahnya usia? Pria berusia 45 tahun atau lebih dan wanita berusia 55 tahun atau lebih, memiliki risiko yang lebih besar terkena penyakit jantung.\r\n<br><br>\r\n    Riwayat keluarga\r\n<br>\r\nApakah orangtua Anda memiliki penyakit jantung? Jika iya, sebaiknya Anda perlu berhati-hati karena Anda memiliki risiko yang lebih besar untuk menderita penyakit jantung bila ada anggota keluarga yang juga menderita penyakit tersebut.\r\n<br><br>\r\n    Makan makanan tidak sehat\r\n<br>\r\nSering mengonsumsi makanan yang tinggi akan lemak jenuh, lemak trans, dan kolesterol dikaitkan dengan risiko penyakit jantung dan kondisi kesehatan lainnya, seperti aterosklerosis. Selain itu, terlalu banyak mengonsumsi garam juga dapat meningkatkan tekanan darah yang mampu memicu terjadinya penyakit jantung.\r\n<br><br>\r\n    Jarang bergerak atau berolahraga\r\n<br>\r\nMalas bergerak memang menjadi kebiasaan yang buruk. Kebiasaan ini bisa mendatangkan berbagai risiko penyakit, tak terkecuali penyakit jantung. Ketika tubuh jarang bergerak atau berolahraga, kemungkinan Anda mengalami obesitas, tekanan darah tinggi, atau bahkan diabetes, menjadi lebih besar.\r\n<br><br>\r\n    Minum terlalu banyak alkohol\r\n<br>\r\nKebiasaan minum alkohol dalam jumlah yang berlebihan dapat meningkatkan tekanan darah dan risiko penyakit jantung. Selain itu, kebiasaan ini juga akan menaikkan kadar trigliserida (zat berlemak dalam darah), yang bisa memicu Anda terkena penyakit jantung. Apabila Anda gemar minum alkohol, cobalah untuk mematuhi batas konsumsi harian yang direkomendasikan, yaitu tidak lebih dari 2 gelas per hari.\r\n<br><br>\r\n    Merokok \r\n<br>\r\nMerokok dapat meningkatkan risiko Anda terkena penyakit jantung. Rokok sangat berbahaya karena bisa menyebabkan kerusakan pada jantung dan pembuluh darah. Di samping itu, nikotin yang terkandung di dalamnya dapat meningkatkan tekanan darah.\r\n<br>\r\nTidak hanya itu, karbon monoksida dari asap rokok bisa mengurangi jumlah oksigen yang dibawa oleh darah. Bukan hanya perokok aktif, asap rokok yang terpapar pada perokok pasif juga bisa meningkatkan risikonya terkena penyakit jantung.\r\n<br><br>\r\n    Depresi\r\n<br>\r\nBeberapa penelitian menunjukkan bahwa depresi meningkatkan risiko seseorang terkena penyakit jantung. Kondisi mental ini dapat menyebabkan sejumlah perubahan dalam tubuh yang bisa memengaruhi kesehatan jantung. Terlalu banyak stres dan merasa sedih akibat depresi juga berpotensi meningkatkan tekanan darah yang memicu penyakit jantung.\r\n<br><br>\r\nsrc: https://www.sehatq.com/artikel/faktor-ini-bisa-menjadi-penyebab-penyakit-jantung', '2020-03-06 08:38:04', 'fajar'),
(3, 'Pilihan Penanganan dan Obat Anemia Berdasarkan Jenis-jenisnya ', 'Anemia merupakan salah satu penyakit yang cukup sering terdengar. Penyakit ini pada dasarnya terjadi ketika ada masalah pada sel darah merah, komponen yang penting untuk mengedarkan oksigen ke seluruh tubuh. Apabila seseorang mengalami penyakit ini, pilihan obat anemia akan didasarkan pada jenis anemia yang diderita.<br>\r\nObat anemia dari dokter berdasarkan jenis penyakitnya\r\n<br><br>\r\nBeberapa anemia yang umum dikenal beserta obat dan penanganannya, yaitu:\r\n<br><br>\r\n1. Obat anemia defisiensi zat besi dan penanganannya\r\n<br>\r\nSesuai namanya, anemia defisiensi besi terjadi ketika tubuh kekurangan zat besi. Zat besi diperlukan untuk memproduksi sel darah merah sebagai komponen darah pengangkut oksigen.\r\n<br>\r\nObat utama untuk penanganan anemia defisiensi zat besi adalah suplemen zat besi. Suplemen ini bisa diminum secara oral, namun juga mungkin diberikan dalam bentuk cair untuk anak-anak. Suplemen zat besi mungkin perlu dikonsumsi untuk waktu yang cukup lama.\r\nAnemia defisiensi zat besi\r\nKekurangan zat besi bisa picu anemia\r\n<br>\r\nApabila suplemen zat besi tidak mempan sebagai obat anemia, kondisi ini mungkin juga bisa dipicu oleh perdarahan atau masalah pada penyerapan zat besi itu sendiri. Untuk menanganinya, dokter mungkin akan menawarkan penanganan sebagai berikut:\r\n<br><br>\r\n    Obat-obatan lain, seperti obat kontrasepsi oral untuk mengendalikan perdarahan saat menstruasi bagi perempuan<br>\r\n    Antibiotik untuk menangani ulkus peptik<br>\r\n    Tindakan bedah untuk mengangkat polip perdarahan, tumor, atau fibroid\r\n   <br> Pada kasus yang parah, pasien mungkin diberikan zat besi melalui infus, atau menjalani transfusi darah\r\n<br><br>\r\n2. Obat anemia defisiensi vitamin dan penanganannya\r\n<br>\r\nAnemia defisiensi vitamin dapat terjadi karena pasien kekurangan vitamin tertentu. Misalnya, kekurangan vitamin C, vitamin B9 (folat), atau vitamin B12, atau juga bisa terjadi jika ada masalah pada penyerapan vitamin tersebut. Vitamin-vitamin diperlukan tubuh dalam produksi sel darah merah.\r\n<br>\r\nPengobatan anemia defisiensi vitamin diberikan dengan konsumsi suplemen untuk vitamin yang kadarnya rendah di tubuh. Sebagian besar suplemen ini diberikan secara oral. Namun, untuk kondisi tertentu, dokter mungkin akan memberikan jenis vitaminnya secara injeksi (seperti pada defisiensi vitamin B12).\r\n<br>\r\nKekurangan vitamin B12 dan folat dapat memicu jenis anemia lain, yakni anemia megaloblastik. Pada kondisi ini, sel darah merah yang dihasilkan berukuran besar melebihi ukuran normalnya. Pengobatannya pun akan dilakukan dengan pemberian suplemen vitamin B12 dan suplemen folat.\r\n<br>\r\nKonsumsi suplemen vitamin akan perlu diiringi dengan konsumsi makanan sehat atas arahan dokter.<br><br>\r\n3. Obat anemia aplastik dan penanganannya\r\n<br>\r\nAnemia aplastik terjadi ketika sel induk di sumsum tulang mengalami kerusakan. Akibatnya, sel induk tidak mampu menghasilkan sel darah. Sel induk bisa kosong sama sekali (aplastik) atau berisi sedikit sel darah (hipoplastik). Penyebab anemia aplastik pun beragam, mulai dari masalah imun hingga infeksi virus.\r\n<br>\r\nAda beberapa penanganan dan obat yang mungkin ditawarkan dokter untuk menangani anemia aplastik, misalnya:\r\n<br>\r\n    Transfusi darah, untuk mengontrol perdarahan dan meredakan gejala pada pasien. Pasien dapat menerima sel darah merah dan trombosit dari transfusi ini.\r\n  <br>  Transplantasi sel induk atau transplantasi sumsum tulang, untuk membangun kembali sumsum tulang menggunakan sel induk dari donor.\r\n    <br>Obat penekan sistem imun (imunosupresan), diberikan untuk pasien yang mengalami anemia aplastik karena autoimun, atau tidak bisa menjalani transplantasi sumsum tulang.\r\n   <br> Obat perangsang sumsum tulang, seperti sargramostim, filgrastim, dan pegfilgrastim.\r\n  <br>  Obat antibiotik dan antivirus, jika anemia aplastik disebabkan oleh infeksi.\r\n<br><br>\r\n4. Obat anemia hemolitik dan penanganannya\r\n<br>\r\nAnemia hemolitik terjadi ketika sel darah merah hancur sebelum waktunya atau tidak berfungsi sebagaimana mestinya. Penyebab anemia hemolitik pun sangat beragam, seperti karena reaksi autoimun, infeksi, tumor, atau penyakit lain seperti leukemia.\r\n<br>\r\nPenanganan dan pengobatan anemia hemolitik akan bergantung pada faktor pemicu, tingkat keparahan pasien, usia, hingga kondisi kesehatan pasien.\r\n<br>\r\nPilihan prosedur dan pengobatan anemia hemolitik tersebut, yaitu:\r\n<br>\r\n    Transfusi darah\r\n    Immunoglobulin intravena (IVIg), yakni terapi memasukkan imunoglobulin (antibodi) ke tubuh pasien\r\n   <br> Obat penekan sistem imun (imunosupresan), seperti kortikosteroid\r\n    Pembedahan\r\n<br><br>\r\n5. Obat anemia sel sabit dan penanganannya\r\n<br>\r\nSesuai namanya, anemia sel sabit terjadi ketika bentuk sel darah ada yang berbentuk bulan sabit (normalnya berbentuk bulat pipih). Sel sabit ini mudah tersangkut di pembuluh sehingga menghambat aliran darah.\r\nSel darah pada anemia sel sabit\r\nSel darah merah yang menyerupai bulan sabit dapat mengganggu aliran darah\r\n<br>\r\nBelum ada obat yang bisa menyembuhkan anemia sel sabit. Namun, konsumsi obat tertentu bisa dijalani untuk meredakan gejalanya, di samping juga mungkin menjalani transfusi darah.\r\n<br>\r\nJenis obat tersebut, yaitu:\r\n<br>\r\n    Hydroxyurea, untuk mengurangi frekuensi periode nyeri pada pasien dan menurunkan kebutuhan transfusi darah. Hanya saja, obat ini berisiko meningkatkan risiko infeksi.\r\n   <br> Bubuk L-glutamin oral, untuk mengurangi frekuensi periode nyeri\r\n <br>   Crizanlizumab, diberikan melalui pembuluh vena untuk mengurangi periode nyeri\r\n    Obat pereda nyeri lain\r\n<br>\r\nPasien mungkin juga perlu menjalani transplantasi sumsum tulang atau mengonsumsi penisilin untuk mencegah infeksi.', '2020-03-06 08:38:04', 'fajri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bukutamu`
--
ALTER TABLE `bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bukutamu`
--
ALTER TABLE `bukutamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
