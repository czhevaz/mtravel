-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2019 at 03:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES
(5, 'Marapi Expedition', 'e67153fcc7f266aca2117d427c6faea2.jpg', 0),
(6, 'Volcano', 'a6e0ae94166d0049e269195570b6f684.jpg', 0),
(7, 'Sunrise', '9de62b52f7f24e5b1303687e383425e4.jpg', 0),
(9, 'Diatas Awan', 'f653344985261604c2cc53391778d8a4.jpg', 2),
(10, 'Singgalang Expedition', '1ff57ed6e5d171ee4e75e5531b75d378.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(1, '7 Tips Penting Mengatasi Kritik', '<p>Kritik bisa menjadi hal yang menyakitkan. Namun jika kritik yang diberikan memang beralasan, kritik bisa memberikan anda masukan baru untuk diri anda dan kehidupan anda.</p>\r\n<p>Kebanyakan tips di artikel ini dapat digunakan untuk mengatasi kritik yang ditujukan pada anda dengan cara yang lebih baik. Namun disini saya juga ingin menunjukkan bahwa sangatlah berguna untuk memeriksa kembali tujuan anda pada saat anda merasa anda harus mengkritik seseorang. Dengan memeriksa diri anda, anda bisa semakin mengenal kehidupan anda saat ini dan pendapat anda mengenai diri anda sendiri.</p>\r\n<p><strong>1. Mengerti Melalui Pengalaman</strong></p>\r\n<p><em>&rdquo;Jangan mengkritik apa yang tak kau pahami. Kau tidak akan pernah berada pada posisi orang itu.&rdquo;</em><br /> - Elvis Presley -</p>\r\n<p><em>&rdquo;Setiap orang bodoh bisa mengkritik, menuduh dan mengeluh; dan kebanyakan orang bodoh melakukan hal itu.&rdquo;</em><br /> - Benjamin Franklin -</p>\r\n<p>Sangatlah mudah untuk jatuh dalam perangkap untuk selalu mengkritik. Namun apakah anda benar-benar mengerti apa yang anda kritik?</p>\r\n<p>Berdasarkan pengalaman pribadi, saya menemukan bahwa seseorang cenderung tidak mengkritik jika ia telah mengalaminya sendiri dan memahaminya. Berbeda jika orang tersebut hanya memiliki pengetahuan saja dan tidak pernah mengalaminya sendiri.</p>\r\n<p>Sangatlah mudah untuk bertindak seperti seorang bos, selalu mengetahui apa yang benar sesuai dengan pandangan anda sendiri. Mengkritik membuat anda merasa enak dan seakan-akan andalah yang benar.</p>\r\n<p>Namun pada akhirnya, orang yang mengkritik tidak akan memperoleh keuntungan atau manfaat apapun.</p>\r\n<p><strong>2. Ingatlah Siapa yang Akhirnya Memperoleh Manfaat</strong></p>\r\n<p><em>&ldquo;Bukanlah kritik yang anda berikan untuk diperhitungkan; bukan orang yang menjatuhkan seseorang yang kuat atau seseorang yang hanya berniat untuk melakukan yang lebih baik namun tidak melakukannya. Manfaat dari kritik akan diterima oleh orang yang sedang berada di arena; yang wajahnya dipenuhi oleh debu, keringat, dan darah, yang berjuang, yang melakukan kesalahan dan gagal berulang kali; karena tidak ada usaha tanpa adanya kegagalan dan kesalahan. Namun manfaat terbesar diterima oleh seseorang yang meraih keberhasilan; seseorang yang memiliki antusiasme, dedikasi, seseorang yang menghabiskan waktu melakukan sesuatu yang berharga; seseorang yang mengetahui bahwa pada akhirnya ia akan memperoleh kemenangan. Dan kalaupun ia gagal, setidaknya ia gagal setelah berusaha dengan sangat keras. Sehingga tempat ia berada bukanlah bersama dengan orang-orang yang negatif dan penakut yang tidak pernah mengenal apa arti kemenangan atau kekalahan.&rdquo;</em><br /> - Theodore Roosevelt -</p>\r\n<p>Kalimat luar biasa dan pemikiran yang perlu anda selalu ingat. Terutama bagi mereka yang berada diluar sana dan memilih untuk bekerja keras. Pilihan yang tidak diambil oleh semua orang. Anda bisa saja berdiri di samping dan mengktitik, yang tentunya merupakan pilihan yang lebih mudah.</p>\r\n<p>Namun hanya berdiam diri menyaksikan <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> dan tidak menjalaninya bukanlah keputusan terbaik. Karena setiap kali anda berdiri di samping dan hanya menyaksikan kehidupan berjalan; anda mungkin tidak melakukan hal-hal yang anda rasakan. Sikap seperti ini membuat anda merasa tidak nyaman dengan diri anda sendiri atau terhadap kehidupan anda.</p>\r\n<p><strong>3. Fokuslah Pada Hal-Hal Yang Membantu Anda</strong></p>\r\n<p><em>&rdquo;Seorang artis tidak memiliki waktu untuk mendengarkan kritik. Seseorang yang ingin menjadi penulis membaca ulasan, sementara seseorang yang ingin menulis tidak memiliki waktu untuk membaca ulasan.&rdquo;</em><br /> - William Faulkner -</p>\r\n<p>Jika anda sedang mengerjakan apa yang anda ingin kerjakan, mengalami kegagalan, mempelajarinya dan mengulanginya terus menerus; berarti anda melakukan sesuatu yang menurut anda berharga.</p>\r\n<p><em>Keep your eyes on the ball</em>. Istilah ini sangatlah bermanfaat bagi anda untuk tetap berfokus. Jika anda sedang bertanding dan melihat ke bagian samping lapangan, anda mungkin melihat orang mengejek dan sebagian menyemangati anda. Namun untuk memperoleh hasil yang anda inginkan, anda harus fokus. Fokuslah pada apa yang sedang anda lakukan di lapangan.</p>\r\n<p>Masalahnya adalah jika anda mendengarkan suara-suara positif tersebut, maka anda mau tidak mau juga harus mendengarkan suara-suara negatif nya. Bagaimana anda bisa melalui masalah ini? Jangan tentukan diri anda berdasarkan pendapat orang lain. Daripada melakukan hal itu, jadilah diri anda sendiri dengan memfokuskan pada hal-hal positif yang anda pikirkan dan lakukan. Serta kenalilah diri anda sendiri, bukan apa yang orang lain pikirkan mengenai diri anda.</p>\r\n<p>Pendapat saya mengenai pujian &ndash; pendapat yang selalu saya jadikan pegangan &ndash; adalah pujian merupakan sesuatu hal yang baik dan saya sangat menghargainya. Sangatlah baik untuk memperoleh pujian, namun seringkali saya menjadi terlalu senang sampai saya lupa diri.</p>\r\n<p>Kebalikan dari pemikiran ini adalah ketika anda menerima kritik negatif. Anda bisa mencerna kritik semacam ini tanpa terlalu banyak emosi negatif menghalangi pikiran anda. Hal ini memungkinkan anda menghargai kritik yang diberikan (jika memang ada sesuatu yang bisa anda pelajari).</p>\r\n<p>Pada dasarnya pemikiran ini bekerja dengan tidak mempedulikan apa pendapat orang lain mengenai diri anda. Jika anda memikirkan pendapat orang lain, anda akan menjadi seseorang yang bergantung pada orang lain dan membiarkan pendapat orang lain mengendalikan anda.</p>\r\n<p><strong>4. Jangan Terima Kritik</strong></p>\r\n<p><em>&ldquo;Seorang pria menyela kuliah yang diberikan Buddha dengan sejumlah makian. Buddha menunggu sampai pria tersebut selesai lalu bertanya, &ldquo;Jika seorang menawarkan sebuah hadiah namun hadiah tersebut ditolak; siapa yang menjadi pemilik hadiah tersebut?&rdquo;</em></p>\r\n<p><em>&ldquo;Milik orang yang menawarkan hadiah tersebut,&rdquo; kata sang pria.</em></p>\r\n<p><em>&rdquo;Nah,&rdquo; kata sang Buddha, &ldquo;Saya menolak makian serta permintaan anda.&rdquo;</em></p>\r\n<p>Jangan terima kritik yang ditujukan pada anda. Anda tidak harus menerimanya. Maka kritik tersebut akan menjadi milik orang yang mengkritik.</p>\r\n<p>Hal ini tentunya lebih mudah dikatakan daripada dilakukan; membiarkan orang lain menyimpan perasaan serta pendapat mereka sendiri daripada membiarkan perasaan dan pendapat tersebut menjadi bagian diri anda. Bahkan merasa bertanggung jawab atas pendapat serta pikiran orang lain tersebut.</p>\r\n<p>Namun, seseorang bisa melakukannya jika ia menyadari apa yang Buddha deskripsikan. Lalu anda bisa menolak hadiah yang diberikan daripada memikirkan bahwa anda harus menerima hadiah tersebut. Hal ini mungkin tidak selalu berhasil setiap saat, terutama jika anda sedang emosional dan rapuh. Namun, hal ini tetap perlu anda ingat.</p>\r\n<p><strong>5. Siapa Yang Sedang Anda Bicarakan?</strong></p>\r\n<p><em>&rdquo;Ketika kita menghakimi atau mengkritik orang lain, kritik tersebut tidak tertuju pada orang yang anda kritik; kritik tersebut mengatakan sesuatu tentang kebutuhan pribadi kita untuk menjadi kritis.&rdquo;</em><br /> - Anonim -</p>\r\n<p>Ketika anda mengkritik seseorang, apa arti kritik tersebut bagi anda? Dan ketika seseorang mengkritik anda, siapa yang sedang menunjukkan dirinya yang sebenarnya?</p>\r\n<p>Jika seseorang menyerang anda secara pribadi atau melepaskan kata-kata yang menghancurkan; ingatlah bahwa kritik yang ia utarakan tidak selalu mengenai diri anda. Kritik menjadi sarana bagi orang yang memberikan kritik untuk melepaskan atau menyalurkan <a href=\"http://www.akuinginsukses.com/10-cara-praktis-mengatasi-rasa-marah/\">rasa marah</a>, frustrasi atau kecemburuannya. Atau sebuah cara untuk memaksakan sudut pandang atau pahamnya sebagai hal yang benar. Atau ia mungkin memiliki kebiasaan untuk memancing emosi orang lain untuk mengundang perdebatan, perkelahian atau untuk mendapatkan perhatian. Dalam hal ini yang menjadi masalah adalah orang tersebut. Bukan karena apa yang anda lakukan.</p>\r\n<p>Ingatlah bahwa orang tersebut hanyalah manusia dan mungkin saja ia sedang mengalami hari atau minggu yang buruk.</p>\r\n<p>Hal ini tidak hanya berlaku bagi orang lain, namun juga berlaku bagi anda. Ketika anda merasa harus mengkritik; tanyakan alasannya pada diri anda terlebih dahulu. Ketika anda mengkritik orang yang sebenarnya tidak perlu anda kritik, ingatlah bahwa anda menyakiti diri anda sendiri dan memaksakan pemikiran serta ego anda dengan sikap semacam ini.</p>\r\n<p><strong>6. Ada Pilihan Yang Lebih Baik</strong></p>\r\n<p><em>&rdquo;Saya belum menemukan seorang pun, terlepas dari apapun kedudukannya, yang tidak bekerja dengan lebih baik bahkan memberikan segenap kemampuannya jika ia mendapatkan pengakuan dibandingkan dengan jika ia bekerja dibawah kritik.&rdquo;</em><br /> - Charles Schwab -</p>\r\n<p>Jadi, apa yang bisa dilakukan seseorang selain mengkritik orang lain agar mereka memperbaiki diri? Salah satunya adalah dengan menyemangati mereka; dengan memfokuskan diri pada hal-hal baik yang mereka lakukan dan bagaimana mereka bisa terus memperbaiki diri dan tidak mengacaukan segalanya.</p>\r\n<p>Seperti yang dikatakan Schwab, dan sama halnya dengan yang sudah anda pahami dari kehidupan anda, dengan memberikan semangat pada orang lain, contohnya memberikan semangat pada seseorang di tempat kerja akan memiliki dampak positif bagi mood, <a href=\"http://www.akuinginsukses.com/gandakan-produktivitas-stop-lakukan-25-hal-ini/\">produktivitas</a>, antusiasme dan motivasi.</p>\r\n<p>Energi akan mengalir ke tempat perhatian anda tertuju. Jadi kemanapun perhatian anda tertuju &ndash; kritik atau memberi semangat pada orang lain &ndash; energi anda akan bertambah kuat. Seseorang mungkin berpendapat bahwa kritik tajam akan membantu dan memberikan hasil. Namun sebenarnya kritik akan mengecewakan orang lain dan mengganggu emosinya.</p>\r\n<p><strong>7. Terimalah Fakta Bahwa Kritik Akan Selalu Ada</strong></p>\r\n<p><em>&rdquo;Kritik bukanlah sesuatu yang bisa kita hindari dengan mudah dengan tidak mengatakan sesuatu, dan tidak menjadi diri anda sendiri.&rdquo;</em><br /> - Aristoteles -</p>\r\n<p>Karena kritik seringkali merupakan salah satu bentuk ekspresi diri sendiri dari orang yang memberi kritik atau karena berdasarkan kurangnya pemahaman terhadap sesuatu, maka tidak ada banyak hal yang bisa anda lakukan untuk menjauhi kritik. Namun anda bisa mengurangi interaksi dengan orang-orang yang sangat negatif dan suka mengkritik. Atau tetaplah fokus pada hal-hal yang sedang anda kerjakan daripada kritik yang ada.</p>\r\n<p>Namun apapun yang anda lakukan, beberapa orang memiliki kebutuhan untuk mengkritik.<br /> Apapun yang anda kerjakan, akan selalu ada orang-orang yang tidak menyukai hal-hal yang anda kerjakan, dan hal itu merupakan sesuatu yang wajar.</p>\r\n<p>Seperti yang dikatakan oleh Eleanor Roosevelt:<br /> <em>&rdquo;Lakukan sesuai dengan apa yang hati anda katakan &ndash; karena anda akan tetap menerima kritikan. Anda akan dikutuk jika anda melakukannya, dan dikutuk jika anda tidak melakukannya.&rdquo;</em></p>', '2016-04-09 16:52:44', 'file_1460210206.jpg', '2016-04-09 20:56:46', 'admin', 0),
(2, '7 Kebiasaan Manusia yang Sangat TIDAK Efektif', '<p style=\"text-align: justify;\">Anda mungkin sudah pernah membaca buku karangan Stephen R. Covey yang berjudul 7 Kebiasaan Manusia yang Sangat Efektif, yang juga merupakan salah satu buku best seller international. Jika anda belum pernah membacanya, saya sangat merekomendasikan buku tersebut kepada anda. Buku wajib yang perlu anda miliki jika anda ingin mengembangkan kepribadian anda. Anda bisa mendapatkannya di toko-toko buku favorit anda.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan kali ini saya akan mensharingkan kepada anda kebiasaan-kebiasaan manusia dari sudut pandang yang berlawanan, yaitu 7 Kebiasaan Manusia yang Sangat TIDAK Efektif.</p>\r\n<p style=\"text-align: justify;\">Tujuh kebiasaan ini harus anda hindari. Mungkin anda sendiri tidak menyadarinya karena sudah menjadi kebiasaan anda sehari-hari.</p>\r\n<p style=\"text-align: justify;\">Apa saja 7 kebiasaan tersebut, mari kita lihat bersama-sama :</p>\r\n<p style=\"text-align: justify;\"><strong>1. Tidak &rsquo;menampakkan diri&rsquo;</strong></p>\r\n<p style=\"text-align: justify;\">Salah satu hal paling sederhana namun memiliki efek yang sangat besar untuk anda dalam meraih <a href=\"http://www.akuinginsukses.com/apa-arti-sukses-bagi-anda/\">kesuksesan</a> &ndash; entah itu dalam kehidupan sosial, karir, keuangan ataupun kesehatan &ndash; adalah tampakkan diri anda lebih sering.</p>\r\n<p style=\"text-align: justify;\">Apa maksud &rsquo;menampakkan diri&rsquo; disini? Saya akan memberikan sebuah ilustrasi : Jika anda ingin memperbaiki kesehatan anda, maka salah satu hal terpenting dan terefektif adalah anda menampakkan diri di tempat kebugaran sesuai dengan jadwal latihan anda.<br /> Mungkin saat itu cuaca sedang tidak mendukung sehingga anda merasa enggan sekali keluar dari rumah. Namun jika anda tetap memaksakan diri untuk pergi meskipun anda malas, maka anda sudah memperbaiki mental anda jauh lebih cepat dibanding anda hanya duduk di sofa sambil menonton tv.</p>\r\n<p style=\"text-align: justify;\">Saya rasa ini berlaku di semua area dalam hidup anda. Jika anda menulis lebih sering, maka suatu saat anda akan menjadi penulis top dimana hasil tulisan anda akan selalu ditunggu orang untuk dibaca. Jika anda sering bertemu atau berkumpul dengan teman-teman, maka kemungkinan anda bertemu dengan seseorang yang spesial bertambah besar.</p>\r\n<p style=\"text-align: justify;\">Hanya dengan anda &rsquo;menampakkan diri&rsquo; lebih sering akan membuat sebuah perbedaan yang sangat besar untuk kesuksesan anda. Jika tidak, anda tidak akan pergi kemana-mana.</p>\r\n<p style=\"text-align: justify;\"><strong>2. Menunda pekerjaan</strong></p>\r\n<p style=\"text-align: justify;\">Ada 2 kondisi yang menyebabkan seseorang menunda pekerjaannya :</p>\r\n<p style=\"text-align: justify;\">- Pertama, dia memiliki pekerjaan yang sangat menumpuk. Dia bingung apa yang harus dia kerjakan terlebih dahulu. Akhirnya dia tidak mengerjakan apa-apa.</p>\r\n<p style=\"text-align: justify;\">- Kedua, dia hanya memiliki sedikit pekerjaan, sehingga dia berpikir untuk menundanya terlebih dahulu.</p>\r\n<p style=\"text-align: justify;\">Terlepas dari apapun kondisi anda, dibawah ini adalah beberapa cara yang bisa anda lakukan agar anda dapat keluar dari kebiasaan menunda ini :</p>\r\n<p style=\"text-align: justify;\">- Lakukanlah tugas terberat dan terpenting terlebih dahulu di pagi hari. Awal yang baik di pagi hari akan membuat momentum yang positif sehingga anda akan menjalani sisa hari anda dengan lebih bersemangat.</p>\r\n<p style=\"text-align: justify;\">- Anda mungkin sering mendengar sebuah joke : bagaimana caranya makan seekor gajah? &hellip;.. Jangan memakannya dalam sekali gigit! Jika anda hanya berpikir tugas yang menumpuk sedang menanti anda, kepala anda dapat menjadi penat, akhirnya akan membawa anda pada penundaan. Pecahlah tugas anda menjadi langkah-langkah kecil, dan fokuslah pada langkah pertama. Setelah selesai, anda bisa melanjutkan ke langkah kecil berikutnya. (saya pernah mengulas juga di artikel <a href=\"http://www.akuinginsukses.com/bagaimana-tetap-termotivasi-untuk-menyelesaikan-apa-yang-telah-anda-mulai/\">Bagaimana Tetap Termotivasi Untuk Menyelesaikan Apa yang Telah Anda Mulai</a>)</p>\r\n<p style=\"text-align: justify;\">- Jika anda berpikir untuk menunda pekerjaan karena anda hanya memiliki sedikit pekerjaan, sebaiknya anda mulai berpikir bagaimana jika tiba-tiba anda mendapatkan tugas baru sementara tugas yang lama belum anda kerjakan. Gunakan selalu prinsip : &rsquo;lakukan sekarang juga hal-hal yang bisa anda lakukan sekarang&rsquo;.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>3. Anda melakukan sesuatu yang sebetulnya tidak penting</strong></p>\r\n<p style=\"text-align: justify;\">Kebiasaan lainnya yang tidak produktif, selain menunda, adalah anda menyibukkan diri dengan hal-hal yang tidak penting.<br /> Untuk menghindari hal ini, tuliskan 3 hal penting yang harus anda lakukan setiap hari, entah itu diatas kertas atau di notebook anda, dan mulailah mengerjakannya dari urutan teratas. Meskipun anda hanya sanggup menyelesaikan 1 pekerjaan saja, namun setidaknya anda telah melakukan hal terpenting yang perlu anda lakukan di hari tersebut.</p>\r\n<p style=\"text-align: justify;\">Apapun cara yang anda gunakan dalam mengatur pekerjaan anda, prioritas utama tetaplah menemukan hal-hal terpenting yang perlu anda lakukan setiap harinya. Teknik ini juga merupakan bagian dari manajemen waktu yang efektif, sehingga anda tidak menghabiskan hari-hari anda dengan melakukan hal-hal yang tidak penting. Menyelesaikan suatu pekerjaan dengan cepat tetap tidak akan berarti jika anda melakukan hal yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Saya akan coba memberikan contoh sederhana. Misalkan anda adalah seorang manajer sebuah departemen produksi. Suatu ketika anak buah anda melakukan kesalahan sehingga produk yang dihasilkan mengalami cacat. Mana yang akan anda pilih :</p>\r\n<p style=\"text-align: justify;\">1. Anda bersama anak buah anda memperbaiki produk yang cacat tersebut; atau</p>\r\n<p style=\"text-align: justify;\">2. Anda mencari solusi agar kejadian tersebut tidak terulang kembali.</p>\r\n<p style=\"text-align: justify;\">Saya rasa anda sudah menangkap maksud saya mengenai hal yang penting dan tidak penting.</p>\r\n<p style=\"text-align: justify;\"><strong>4. Berpikir terlalu lama</strong></p>\r\n<p style=\"text-align: justify;\">Orang yang berpikir terlalu lama, otomatis akan membuatnya kurang mengambil tindakan. Terjebak dalam analisa yang berlebihan dapat membuang waktu-waktu berharga dalam hidup anda. Tidak ada yang salah dengan berpikir sebelum melakukan tindakan, bahkan sangat diperlukan hal semacam itu. Melakukan penelitian, membuat rencana, menggali potensi-potensi keuntungan serta masalah yang mungkin terjadi.</p>\r\n<p style=\"text-align: justify;\">Namun berpikir, berpikir dan terus berpikir adalah cara lain mensia-siakan hidup anda. Anda tidak perlu menganalisa semua hal dari setiap sudut. Anda tidak bisa menunggu waktu yang betul-betul tepat untuk menjalankan aksi anda. Percayalah waktu tersebut tidak akan datang. Anda juga tidak perlu merisaukan bagaimana jika <a href=\"http://www.akuinginsukses.com/mengapa-anda-tidak-perlu-khawatir-dengan-kegagalan/\">kegagalan</a> menghampiri anda. Jika anda tetap berpikir dan terus berpikir semakin dalam, maka anda akan semakin sulit untuk mengambil tindakan.</p>\r\n<p style=\"text-align: justify;\">Berhentilah berpikir, lakukan sekarang juga apapun yang perlu anda lakukan, pergilah kemanapun anda perlu pergi.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>5. Melihat sisi negatif dari setiap hal</strong></p>\r\n<p style=\"text-align: justify;\">Ketika anda melihat segala hal dari sudut yang negatif, maka sebetulnya anda telah menjatuhkan motivasi anda sendiri. Anda menemukan kekurangan dimana-mana dan masalah-masalah yang mungkin tidak betul-betul ada, contohnya ketika anda mencari alasan untuk tidak melakukan sesuatu. Saya yakin dari sudut yang negatif anda setidaknya akan menemukan 10 alasan.</p>\r\n<p style=\"text-align: justify;\">Contoh yang lain, anda mencari seseorang yang mau mendengarkan keluh kesah anda &ndash; padahal sebetulnya tidak ada yang mau mendengarkan keluhan anda &ndash; tentang pekerjaan dan kehidupan anda yang menjenuhkan atau atasan anda yang menyebalkan. Ketahuilah bahwa anda akan menciptakan hidup anda sesuai dengan apa yang anda pikirkan dan bagaimana anda memandang lingkungan anda. Jika anda memandang kehidupan anda begitu menjemukan, anda akan memiliki kehidupan yang benar-benar menjemukkan.</p>\r\n<p style=\"text-align: justify;\">Yang perlu anda lakukan tidak lain adalah anda menantang pada diri anda sendiri untuk selalu berpikir positif selama 7 hari kedepan. Lihatlah nanti hasil luar biasa yang akan anda dapat.</p>\r\n<p style=\"text-align: justify;\"><strong>6. Keras kepala pada pendirian anda sendiri dan menolak pendapat orang lain</strong></p>\r\n<p style=\"text-align: justify;\">Memang sulit untuk mengakui atau berjiwa besar bahwa pendapat anda bukanlah pilihan yang terbaik. Sehingga anda ngotot pada pendapat anda dan menutup pikiran anda dari pengaruh orang lain. Kondisi ini dapat menyebabkan anda sulit untuk berkembang menjadi pribadi yang lebih efektif.</p>\r\n<p style=\"text-align: justify;\">Saran untuk mengatasi permasalah ini adalah anda menyadari bahwa manusia mempunyai batas atas hal-hal yang ia ketahui. Anda harus terbuka untuk menerima pelajaran atas kesalahan anda sendiri, kesalahan orang lain atau sumber-sumber lainnya seperti buku.</p>\r\n<p style=\"text-align: justify;\">Ketika otak anda selalu dikosongkan untuk menerima hal-hal baru, secara tidak sadar level anda telah naik ke level yang lebih tinggi, begitu seterusnya. Namun perlu diingat, jangan pula anda terjebak seperti dijelaskan di no.4. Pengetahuan baru yang anda terima, perlu anda terapkan dan coba dalam kehidupan anda, jangan hanya menjadi pengetahuan semata saja.</p>\r\n<p style=\"text-align: justify;\"><strong>7. Membiarkan informasi membanjiri otak anda</strong></p>\r\n<p style=\"text-align: justify;\">Kebalikan dari poin 6 diatas, di poin 7 ini anda justru membiarkan seluruh informasi mengalir ke otak anda tanpa penyaringan. Jika anda melakukan ini, maka akan sulit bagi anda untuk berpikir dengan jernih. Beberapa kondisi yang menyebabkan anda seperti ini adalah :</p>\r\n<p style=\"text-align: justify;\">- Banyak informasi yang anda terima adalah negatif. Media-media dan lingkungan di sekeliling anda sering memberikan informasi-informasi negatif, seperti : penipuan, perampokan, pembunuhan, gosip dsb. Jika anda tidak selektif dalam memilih berita, anda dapat terpengaruh secara negatif juga, entah itu secara pikiran, perasaan maupun tindakan.</p>\r\n<p style=\"text-align: justify;\">- Ada suatu dorongan dalam diri anda untuk selalu mengetahui informasi terkini, namun seberapa cepat anda mengikuti perkembangan dengan berbagai alat yang anda miliki, akan selalu ada puluhan bahkan ratusan hal baru yang terjadi yang tidak bisa anda ikuti. Hali ini justru dapat membuat anda menjadi stress.</p>\r\n<p style=\"text-align: justify;\">Sulit untuk membuat keputusan dan mengambil tindakan jika otak anda terus dibanjiri dengan informasi-informasi. Bahkan anda dapat terjebak melakukan kebiasaan seperti disebutkan di poin 3. Anda sibuk dan sibuk terus melakukan pekerjaan namun sebetulnya pekerjaan yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Untuk dapat fokus, berpikir jernih dan mengambil tindakan, perlu sekali untuk anda menseleksi bahkan jika perlu membatasi akses informasi yang masuk ke otak anda, misalkan ketika anda sedang menyelesaikan suatu pekerjaan, anda melakukan hal-hal seperti : mematikan telepon anda, internet dan pintu ruangan anda. Anda akan melihat hasil yang menakjubkan ketika anda tidak diinterupsi setiap 10 menit oleh email atau website-website favorit anda.</p>', '2016-04-09 19:10:22', 'file_1460203822.jpg', NULL, 'admin', 0),
(3, '8 Racun Dalam Kehidupan Kita', '<p>Hilary Bergsieker profesor ilmu perilaku sosial dari Psychology Department Universitas Waterloo, Canada, mengatakan kerusakan dalam berpikir dan bersikap dikarenakan &ldquo;racun&rdquo; dan energi negatif dalam pikiran kita. Pribadi yang sehat adalah amazing people yakni pribadi yang menarik, disukai, memiliki hubungan win-win dan bermanfaat bagi orang lain. Sebaliknya perilaku yang rusak dan beracun atau toxic behavior, akan menimbulkan gesekan, persinggungan, pertengkaran dan rasa tidak nyaman kepada orang lain.</p>\r\n<p>Hilary Bergsieker menggaris bawahi perilaku buruk dan beracun atau toxic behavior yang terjadi dalam hubungan antar manusia yang sering menyebabkan perilaku seseorang membuat pihak lain menderita dan terbebani. Perilaku dan sikap buruk diterjemahkan penulis sebagai 8 &ldquo;racun&rdquo; dalam kehidupan kita yang dapat mengancam relasi hubungan dan pergaulan antar individu maupun kelompok dalam ruang lingkup organisasi, perusahaan, teman, rumah tangga, relasi dll.</p>\r\n<p><strong>1. Arrogance = Kesombongan</strong></p>\r\n<p>Kalau kita bertindak sombong terhadap orang lain maka adrenalin negatif akan menumpuk dalam pikiran dan hati kita. Badan kita akan menghasilkan energi negatif yang cenderung kuat menolak hal-hal yang baik, sekalipun datang dari orang yang kita anggap benar. Kesombongan adalah racun terbesar yang menutup daya pikir, akal sehat dan nalar kita terhadap hal positif dan menolak pembangunan hubungan antar manusia atas dasar keseimbangan, harmonisasi, dan manfaat bagi semua orang.</p>\r\n<p>Kesombongan bisa terjadi karena sikap keakuan yang kuat dan memandang dirinya lebih superior dan sukses dibanding orang lain. Orang yang bersikap seperti ini karena kurang memiliki sikap empati terhadap pemahaman bahwa pada dasarnya setiap orang adalah subjek dan bukan objek dalam ruang lingkup kehidupan.</p>\r\n<p>Contoh: ketika kita sukses maka kita menganggap bahwa prestasi tersebut adalah semata-mata karena kerja keras diri sendiri, dan bukan karena bantuan dan peranan dari teman, bawahan atau anggota keluarga dll, yang sebenarnya turut memiiiki andil.</p>\r\n<p><strong>2. Ignorance = Ketidakpedulian</strong></p>\r\n<p>Ignorance terjadi karena tidak peka dan ketidakpedulian terhadap apa yang terjadi di sekeliling kita.</p>\r\n<p>Contoh: kalau ada orang sedang kesusahan, kelaparan, berduka atau menderita, maka empati atau rasa kasihan tidak akan muncul dari diri kita.</p>\r\n<p>Ketidakpedulian melahirkan kekacauan dalam relasi antar manusia. Ignorance muncul karena kita takut berbagi perhatian dan kepedulian, dan menilai orang lain yang menderita semata-mata karena faktor nasib. Bukan karena faktor situasi yang mungkin bisa dirubah karena bantuan dan perhatian kita.</p>\r\n<p>Hati nurani bisa timbul karena persepsi yang benar dalam pikiran kita dan membawa hati dan perasaan kita dalam bentuk simpati dan empati. Ketidakpedulian melahirkan penyakit dan racun sosial dalam pikiran dan hati kita.</p>\r\n<p><strong>3. Denial = Penyangkalan</strong></p>\r\n<p>Seberapa sering kita menyangkal terhadap apa yang telah kita perbuat dan merugikan pihak lain. Penyangkalan disebabkan karena kita tidak memiliki &ldquo;jiwa dalam pikiran kita&rdquo;. Kita kehilangan kesadaran untuk berani mempertanggungjawabkan atas apa yang kita lakukan.</p>\r\n<p>Penyangkalan kerap membuat kita buta terhadap realitas yang sebenarnya. Ketika kebanyakan orang lain mengatakan warna putih adalah putih, maka kita tetap mengatakan hitam. Penyangkalan terjadi karena kita tidak peduli dengan perasaan orang lain.</p>\r\n<p>Contoh: jika tim kerja kita mengalami kemerosotan kinerja, maka kita melepas tanggung jawab dan kenyataan sebenarnya, dan menyangkal dengan memberikan argumentasi dan pembelaan diri bahwa semuanya tetap berjalan baik.</p>\r\n<p><strong>4. Tinkering = Mengerjakan sesuatu tanpa keahlian</strong></p>\r\n<p>Banyak kisah nyata sukses yang terjadi di masyarakat yang dimulai dengan tindakan dan cara berpikir hal-hal kecil dan sederhana. Dari situ kita dapat memupuk, melatih dan mengasah secara bertahap dan menjadikannya suatu keahlian yang kita kuasai. Untuk menjalankan suatu pekerjaan apa pun kita dituntut memiliki kemampuan dan keahlian baik secara praktik, teori dan pengetahuan yang cukup dan seimbang.</p>\r\n<p>Tinkering bisa terjadi karena kita tidak mau belajar dan melatih diri agar menjadi lebih cakap. Akibatnya sering menjadi hambatan bagi orang lain. Kalaupun kita telah merasa pandai dan tidak mau terus belajar, maka kualitas keahlian akan menurun. Maka kemampuan kita bukan menjadi obat, tetapi dapat menjadi racun bagi orang lain.</p>\r\n<p>Untuk mengubah keadaan, kita hendaknya berani memberikan pengorbanan melalui tenaga, pikiran, waktu, bahkan biaya, agar kita semakin berilmu dan tidak menjadi beban pihak lain.</p>\r\n<p>Contoh tinkering: seorang penjual tidak mau belajar dari penjual yang sukses, membaca buku-buku penjualan atau mempraktekkan secara konsisten, disiplin dan teratur. Akibatnya prestasi penjualan tidak pernah dicapai dan merugikan perusahaan serta dirinya sendiri.</p>\r\n<p><strong>5. Losing focus = Kehilangan fokus</strong></p>\r\n<p>Fokus adalah sebuah kata motivasi untuk melakukan sesuatu pekerjaan mulai dari perencanaan, penyusunan, tindakan, evaluasi hasil dan dampak dari tujuan yang akan kita capai. Ketidakmampuan kita untuk <a href=\"http://www.akuinginsukses.com/kekuatan-fokus/\">fokus</a> sering disebabkan karena memikirkan dan bertindak pada hal-hal yang sepele dan kurang bermanfaat. Bahkan cenderung menjalankan sesuatu pekerjaan yang seharusnya prioritas menjadi kabur, kehilangan arah, dan pegangan.</p>\r\n<p>Pribadi yang kehilangan fokus dalam hidup dan pekerjaan adalah pribadi yang kehilangan arah dan disorientasi dalam berpikir. Seperti unsur-unsur kimia yang tidak lagi selaras pada susunan molekul dan atom dalam tubuh dan pikiran kita. Fokus memerlukan latihan yang teratur, konsistensi dalam cara berpikir dan tegas dalam menentukan sikap kita. Kehilangan fokus sering menjadi beban besar pada diri sendiri dan orang lain yang terlibat langsung maupun tidak langsung dalam aktivitas kita sehari-hari.</p>\r\n<p>Contoh: Pada saat kita harus menyelesaikan suatu tugas penting, maka kita lupa pada target waktu, ukuran dan standar pencapaian hasil kerja dan perhatian terhadap anggota tim kerja yang terlibat didaiamnya.</p>\r\n<p><strong>6. Permissive = Toleransi negatif</strong></p>\r\n<p>Konsistensi sangat dibutuhkan agar kita bisa mengikuti dan menjalankan standar pekerjaan dengan benar. Membuat setiap orang yang terkait langsung maupun tidak langsung dengan aktivitas kita memiliki daya ungkit dalam memberikan kinerja terbaiknya dan mendapatkan manfaat luas. Lawan dari konsistensi adalah permisif yakni toleransi yang negatif. Permisif sering menciptakan keadaan yang kacau dan tidak beraturan atau inkonsistensi dalam berpikir, berucap maupun bertindak.</p>\r\n<p>Dalam sebuah survei tentang tingkah laku, cara berpikir dan berucap kepada sekelompok karyawan beberapa perusahaan, diambil sebuah kesimpulan ternyata semua orang sepakat baik lisan dan tertulis bahwa korupsi, manipulasi dan indisipliner tidak diterima oleh akal sehat dan norma yang berlaku. Ada jembatan keseimbangan persepsi perilaku yang benar dan salah. Toleransi negatif adalah racun dalam tindakan dan merugikan kebanyakan orang atau perusahaan&nbsp;secara psikologi dan materi.</p>\r\n<p>Contoh: peraturan setiap orang dilarang terlambat masuk kerja, maka ketika kita membiarkan segelintir orang melanggar karena &ldquo;unsur suka dan pilih kasih&rdquo;, maka akan merusak tatanan, standar dan aturan yang berlaku.</p>\r\n<p><strong>7. Egoism = Keakuan &ndash; egoisme</strong></p>\r\n<p>Sering dalam pergumulan hidup kita bertanya: saya yang lebih penting atau orang lain yang harus saya seimbangkan dalam hubungan sosial. Kita sering menempatkan diri kita lebih berharga dan berarti dibanding yang lain. Kesalahan terbesar dalam menempatkan diri kita &ldquo;sebagai yang paling berarti&rdquo; menyebabkan kehilangan sikap dalam berbagi dan berempati kepada orang lain.</p>\r\n<p>Egoisme atau keakuan muncul karena kita takut menghadapi realitas bahwa hidup dan hasil yang baik harus diperjuangkan dan diperebutkan dengan cara yang elegan dan benar. Efek dari racun pikiran dan hati membuat tindakan kita tidak merefleksikan kepentingan bersama. Tindakan kita akan lebih didominasi oleh imajinasi dalam pikiran kita yang keliru dan buruk karena mementingkan diri sendiri Maka egoisme adalah bahaya besar yang membuat kita bersikap apatis terhadap kebutuhan yang seimbang dalam hubungan dengan orang lain.</p>\r\n<p>Contoh: ketika kita membuang sampah sembarangan, maka kita hanya mementingkan diri sendiri dan tidak peduli terhadap <a href=\"http://www.akuinginsukses.com/16-cara-mudah-meningkatkan-kesehatan-anda/\">kesehatan</a>, keselamatan dan kebersihan lingkungan dan orang lain.</p>\r\n<p><strong>8. Conflict = Pertikaian</strong></p>\r\n<p>Mengapa konflik sering muncul di sekitar kita? Akumulasi dari racun persoalan hidup kita di atas akan menyebabkan timbulnya pertikaian dengan orang lain. Dalam hubungan pribadi, rumah tangga, pekerjaan, bisnis, dan relasi dengan pihak mana pun sering timbul kecenderungan terjadinya pertikaian, debat, permusuhan, saling menyalahkan dan menghindarkan tanggung jawab kita. Konflik akan melahirkan luka perasaan dan dendam pada semua pihak yang terlibat. Dan pertikaian akan menimbulkan suasana tegang pada semua pihak. Karena itu pertikaian adalah racun dari emosi kita yang tidak terkendali.</p>\r\n<p>Konflik atau pertikaian timbul karena tidak mampu mengelola emosi dan egoisme yang menguasai diri kita. Konflik bisa terjadi secara mental, psikologis dan fisik yang tentunya akan merugikan semua pihak.</p>\r\n<p>Meredakan dan mengurangi &ldquo;racun-racun&rdquo; dalam kehidupan kita akan berdampak positif kepada cara berpikir, berucap dan bertingkah laku. Merefleksikan diri bahwa pada hakekatnya setiap pikiran dan tubuh manusia memiliki unsur-unsur positif yang lebih dominan daripada unsur-unsur negatif. Tantangan terbesar bagi kita adalah mengelola dan mengembangkan kemampuan dalam mengikis secara bertahap semua unsur-unsur &ldquo;racun&rdquo;yang ada dalam diri kita, agar mampu menempatkan diri kita berguna dan bernilai dalam pergaulan dan hubungan dengan orang lain.</p>\r\n<p><em>&ldquo;There is an island of opportunity in the middle of every difficulties.&rdquo;</em></p>', '2016-04-09 19:12:07', 'file_1460203927.jpg', NULL, 'admin', 0),
(4, '9 Kesalahan yang Dapat Menghentikan Perkembangan Diri Anda', '<p>Ketika anda mencoba untuk berkembang, sangatlah mudah untuk jatuh lebih dari satu kali dan membuat diri anda terluka dalam perjalanan menuju kesuksesan, kebahagiaan, dan semua hal yang ingin anda raih. Tentunya terdapat beberapa lubang dalam yang harus anda perhatikan dan berhati-hati tentu saja.</p>\r\n<p>Di bawah ini merupakan 9 kesalahan yang sering dilakukan ketika anda sedang berkembang. Saya telah melakukan kesalahan-kesalahan tersebut. Bahkan lebih dari satu kali.</p>\r\n<p>Dengan sharing saya ini, harapan saya semoga anda tidak jatuh ke lubang yang sama seperti yang saya alami.</p>\r\n<p>Sekarang marilah kita bahas 9 kesalahan tersebut :</p>\r\n<p><strong>1. Berpikir Bahwa Anda Telah Mengetahui Segalanya </strong></p>\r\n<p>Hal ini merupakan masalah besar dan dapat menghentikan perkembangan diri anda untuk waktu yang cukup lama. Pikiran-pikiran seperti: &ldquo;Saya mengerti bagaimana hal-hal bekerja di dunia ini. Saya tidak membutuhkan salesman itu untuk meningkatkan kualitas hidup saya. Mereka tidak memiliki sesuatu yang baru yang bisa mereka tawarkan. Hanya orang-orang putus asa yang membutuhkan buku tersebut. Ini hanya masalah kesadaran diri saja.&rdquo;</p>\r\n<p>Pemikiran dan sikap semacam inilah yang akan membuat anda sulit untuk berkembang. Ketika anda membaca buku-buku pengembangan diri dari penulis seperti Anthony Robbins, Brian Tracy atau Stephen Covey; anda akan menyadari dengan cepat bahwa nasihat terbaik yang mereka berikan tidak sepenuhnya berhubungan dengan kesadaran diri. Bahkan, seringkali nasihat yang mereka berikan bertolak belakang dengan kebenaran yang selama ini kita peroleh dari pelajaran-palajaran di sekolah, media dan orang-orang lain di sekitar kita.</p>\r\n<p><strong>2. Dipusingkan Oleh Hal-Hal Yang Sedang Tren </strong></p>\r\n<p><a href=\"http://www.akuinginsukses.com/bagaimana-membentuk-pola-pikir-yang-baru/\">Pola pikir</a> seperti poin pertama diatas tidak sepenuhnya salah. Terdapat banyak salesman yang menawarkan banyak hal pada anda diluar sana. Dan karena penulis atau pembicara motivasi paling sukses memahami bagaimana caranya untuk berkomunikasi, terdapat banyak teknik penjualan high-pressure yang bisa anda peroleh dengan membaca buku-buku pemasaran. Teknik seperti menawarkan bingkisan kecil dan gratis bagi konsumen, atau dengan mengatakan bahwa hanya ada 500 buah produk sejenis dan tawaran ini hanya berlaku 1 minggu.</p>\r\n<p>Namun meskipun beberapa teknik pemasaran terkesan sangat optimistis atau cenderung agresif, bukan berarti produk yang ditawarkan tidak memiliki nilai. Bedakan antara teknik penjualan dengan produk yang ditawarakan.</p>\r\n<p>Menurut saya, mulailah dengan merk-merk atau produk-produk yang memiliki ulasan yang baik. Lakukan sedikit penelitian melalui google dan carilah informasi mengenai produk tersebut.</p>\r\n<p><strong>3. Tidak Mengambil Tindakan</strong></p>\r\n<p>Berpikir bahwa dengan membaca buku atau blog akan mengubah hidup anda secara otomatis merupakan pemikiran yang keliru. Pengetahuan tanpa tindakan tidak akan menghasilkan apapun. Dan hanya andalah yang bisa merubah diri anda sendiri. Orang lain bisa memberi anda nasihat, dukungan, serta motivasi. Namun pada akhirnya, anda harus mengambil tindakan.</p>\r\n<p>Jika anda mengalami masalah dengan mengambil tindakan, seringkali hal ini disebabkan oleh rasa takut (baca juga&nbsp;<a title=\"Mengatasi Rasa Takut Mengambil Peluang\" href=\"http://www.akuinginsukses.com/mengatasi-rasa-takut-mengambil-peluang/\">Mengatasi Rasa Takut Mengambil Peluang</a>)</p>\r\n<p><strong>4. Menyerah</strong></p>\r\n<p>Ketika anda mengalami kegagalan pertama kali, kedua atau ketiga, anda biasanya berpikir &ldquo;Hal ini tidak ada artinya. Inilah diri saya dan saya tidak dapat berubah. Saya harus membiasakan diri saya berpikir bahwa saya memang seperti itu.&rdquo;<br /> Jangan menyerah. Satu atau lima atau 20 kegagalan tidak akan ada artinya dalam jangka panjang. Anda harus gagal supaya anda menguasai sesuatu dan berkembang.</p>\r\n<p><strong>5. Khawatir terhadap atau mendengarkan perkataan orang lain</strong></p>\r\n<p>Anda mungkin takut orang-orang akan bereaksi negatif terhadap perubahan yang anda lakukan, dan mereka memang cenderung berbuat demikian. Mungkin mereka berbuat demikian karena mereka <a href=\"http://www.akuinginsukses.com/bagaimana-untuk-berhenti-merasa-khawatir/\">khawatir</a> anda akan menjauhi mereka dan akan kehilangan anda selamanya. Atau mungkin juga mereka tidak ingin anda berubah karena perubahan tersebut akan membuat mereka merasa diam di tempat. Mereka mungkin juga memberikan anda sejumlah opini negatif terhadap perkembangan diri anda; bahwa semua yang anda lakukan hanyalah sia-sia, buang waktu dan kehidupan nyata sangatlah berbeda dibandingkan dengan yang tertulis di buku.</p>\r\n<p>Jika anda menemui jalan buntu, hal ini mungkin karena anda merasa anda memerlukan persetujuan dari orang lain dan anda harus mulai melepaskan diri dari pengaruh orang-orang ini. Jika tidak, anda akan selamanya hidup dalam bayang-bayang orang lain dan anda tidak akan pernah berkembang.</p>\r\n<p><strong>6. Bereksperimen Dengan Cara Anda Sendiri</strong></p>\r\n<p>Bereksperimen dengan materi perkembangan diri anda; tidak berkomitmen untuk mempelajari atau mempraktekkan serta mengembangkannya secara konsisten sebagai bagian keseharian anda. Mungkin anda merasa perubahan yang sedang anda coba lakukan terlalu sulit, atau tidak layak untuk anda lakukan, sehingga anda tidak berkomitmen untuk melakukannya.</p>\r\n<p>Sulitkah melakukan perubahan tersebut? Terkadang ya. Namun saya merasa bahwa pertumbuhan memiliki lebih banyak nilai positif dibandingkan dengan negatif, dan saya berpendapat bahwa dari sudut pandang orang awam &ndash; orang yang belum mengikuti program pengembangan diri apapun &ndash; terkesan bahwa orang-orang yang sedang mencoba untuk melakukan perkembangan diri terlihat lebih bekerja keras, mengeluarkan lebih banyak uang dan waktu dibandingkan jika anda melihat dari sisi orang yang mencoba melakukan perubahan tersebut. Kerja keras bukanlah sesuatu yang sulit jika anda merasa anda berkembang dan menyukai apa yang sedang anda kerjakan.</p>\r\n<p>Apakah perubahan tersebut layak untuk dilakukan? Tentunya perubahan tersebut lebih baik dibandingkan dengan alternatif lain; hanya berlarian kesana kemari setiap hari dan dipenuhi dengan kemarahan, <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">stress</a> dan kurangnya penghargaan diri.<br /> Kunci bagi semua hal dalam kehidupan adalah konsistensi dan kesabaran. Berkomitmenlah untuk perkembangan diri anda.</p>\r\n<p><strong>7. Memiliki Ekspektasi yang Tidak Beralasan</strong></p>\r\n<p>Hal ini mungkin terjadi karena kurangnya informasi. Kadang dalam jumlah informasi serta kualitas informasi yang anda miliki. Ketika pertama kali anda memulai, anda mungkin merasa bahwa hanya dengan membaca sebuah buku akan menyelesaikan semua masalah anda. Tidak memiliki gambaran yang jelas mengenai apa yang bisa anda peroleh akan membuat anda kecewa dan seperti seorang pecundang tanpa alasan yang baik, hingga akhirnya anda menyerah.</p>\r\n<p>Salah satu metode yang saya gunakan untuk mengeluarkan diri saya dari kondisi tersebut adalah dengan mengembangkan kebiasaan &ldquo;mengkonsumsi&rdquo; materi motivasi setiap saat, baik dalam bentuk buku, blog atau CD audio. Saya membangun perpustakaan kecil milik saya sendiri dan mengisinya dengan materi-materi pengembangan diri.</p>\r\n<p>Mendengarkan kembali sebuah CD milik Andrie Wongso misalnya tidak hanya membuat saya termotivasi lagi, tapi juga menyediakan saya dengan solusi atas masalah saya. Kebiasaan ini &ndash; dikombinasikan dengan tindakan &ndash; akan memperjelas hal-hal yang anda inginkan, metode apa yang terbaik bagi anda dan semua peluang serta batasan dalam perkembangan diri anda.</p>\r\n<p><strong>8. Kegagalan Untuk Atau Tidak Berkeinginan Untuk Memahami Diri Anda Sendiri</strong></p>\r\n<p>Untuk mengubah diri anda; anda harus memahami proses yang terjadi di dalam diri anda. Bagaimana emosi anda bekerja, ego anda bekerja, bagaimana pengalaman masa lalu serta kebiasaan anda dapat mempengaruhi anda. Serta apa yang bisa anda lakukan mengenai hal-hal tersebut. Bagaimana anda bisa membantu diri anda sendiri. Bahkan jika anda berusaha mengubah bagian diri anda yang benar-benar ingin anda ubah.</p>\r\n<p>Jadi menurut pendapat saya, jangan hanya berpegang pada 1 orang guru serta 1 pemikiran. Bacalah buku atau dengarkan materi-materi lain yang berasal dari penulis ternama untuk memperluas wawasan anda dan memberikan anda sejumlah solusi atas masalah-masalah anda.</p>\r\n<p>Cobalah menjadi lebih mawas diri; sadari proses yang terjadi dalam diri anda ketika anda menjadi marah, merasa <a href=\"http://www.akuinginsukses.com/bagaimana-mengatasi-depresi-dan-mengubah-hidup-anda/\">depresi</a>, cemburu atau iri hati. Cobalah untuk bertindak berbeda dari yang biasa anda lakukan.</p>\r\n<p>Daripada mengambil tindakan seperti yang biasa anda lakukan, terapkanlah apa yang telah anda pelajari untuk menangani kebiasaan anda. Jika anda gagal &ndash; sama halnya dengan kebanyakan orang, paculah terus diri anda &ndash; luangkan waktu untuk menganalisa mengapa anda merasakan atau melakukan tindakan negatif tersebut.</p>\r\n<p>Jika anda tidak memiliki kendali atas tindakan anda, akan sangat sulit untuk membantu diri anda dan orang lain. Anda akan menemukan solusi yang tidak efektif, menjadi tidak bersemangat, dan pada akhirnya berhenti untuk terus berkembang.</p>\r\n<p><strong>9. Tidak Mengambil Tanggung Jawab Atas Diri Anda Sendiri</strong></p>\r\n<p>Hal ini sangatlah penting. Jangan salahkan orang lain. Andalah yang dapat melakukan perubahan tersebut.</p>\r\n<p>Itulah 9 hal yang dapat menghambat perkembangan diri anda dan saya yakin masih banyak ha-hal lainnya. Namun saya akan tambahkan poin-poin lain pada lain kesempatan.</p>', '2016-04-09 19:13:14', 'file_1460203994.jpg', NULL, 'admin', 1);
INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(6, '14 Teknik Komunikasi Yang Paling Efektif', '<p>Menurut berbagai survei, sekitar 85% persen dari kesuksesan dalam hidup berkaitan secara langsung dengan kemampuan berkomunikasi dan keterampilan membina hubungan.</p>\r\n<p>Hal itu menandakan bahwa tidak peduli seberapa ambisius seseorang atau berapa banyak mereka mengatasi ketakutan mereka atau seberapa tinggi tingkat pendidikan, mereka masih memiliki kemungkinan yang rendah untuk melangkah lebih jauh dalam hidup mereka tanpa kemampuan komunikasi yang efektif yang diperlukan dalam berhubungan dengan orang-orang.</p>\r\n<p>Dan ketika saya mengatakan berhubungan dengan orang-orang, hal ini tentu saja bukan orang-orang yang secara natural memiliki kemiripan karakter dengan anda, karena berhubungan dengan orang-orang tersebut tidak membutuhkan banyak usaha atau kemampuan dalam berkomunikasi.</p>\r\n<p>Saya mengacu pada orang-orang yang anda sukai namun anda seringkali menemukan kesulitan untuk membina hubungan dengan mereka karena anda tidak yakin apa yang akan anda katakan atau lakukan.</p>\r\n<p>Dibutuhkan keterampilan untuk memperluas hubungan dari lingkaran kecil orang-orang dimana anda berada saat ini menuju lingkaran besar orang-orang yang akan anda temui. Keterampilan semacam ini yang menjamin akan melontarkan keberhasilan Anda dalam kehidupan.</p>\r\n<p><strong>Mengembangkan kemampuan komunikasi Anda</strong></p>\r\n<p>Bila anda mencoba untuk terhubung dengan lingkaran orang-orang yang lebih besar, anda perlu menanyakan 5 pertanyaan ini pada diri anda sendiri :<br /> - Apakah anda menemukan kesamaan antara anda berdua?<br /> - Apakah anda membuat mereka merasa nyaman?<br /> - Apakah anda membuat mereka merasa dimengerti?<br /> - Apakah hubungan anda dengan jelas didefinisikan?<br /> - Apakah mereka merasakan emosi yang positif akibat berinteraksi dengan Anda?</p>\r\n<p>Untuk menjawab pertanyaan-pertanyaan tersebut, anda harus mempertimbangkan penjelasan dibawah ini &hellip;&hellip;</p>\r\n<p><strong>14 Kemampuan Komunikasi Yang Efektif</strong></p>\r\n<p>1. <strong>Berikan kesan bahwa anda antusias berbicara dengan mereka</strong> &ndash; Beri mereka kesan bahwa anda lebih suka berbicara dengan mereka daripada orang lain di muka bumi ini. Ketika anda memberi mereka kesan bahwa anda sangat antusias berbicara dengan mereka dan bahwa anda peduli kepada mereka, anda membuat perasaan mereka lebih <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">positif</a> dan percaya diri. Mereka akan lebih terbuka kepada anda dan sangat mungkin memiliki percakapan yang mendalam dengan anda.</p>\r\n<p>2. <strong>Ajukan pertanyaan tentang minat mereka</strong> &ndash; Ajukan pertanyaan terbuka yang akan membuat mereka berbicara tentang minat dan kehidupan mereka. Galilah sedetail mungkin sehingga akan membantu mereka memperoleh perspektif baru tentang diri mereka sendiri dan tujuan hidup mereka.</p>\r\n<p>3. <strong>Beradaptasi dengan bahasa tubuh dan perasaan mereka</strong> &ndash; Rasakan bagaimana perasaan mereka pada saat ini dengan mengamati <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> dan nada suara. Dari sudut pandang ini, anda dapat menyesuaikan kata-kata, bahasa tubuh, dan nada suara anda sehingga mereka akan merespon lebih positif.</p>\r\n<p>4. <strong>Tunjukkan rasa persetujuan: Katakan kepada mereka apa yang anda kagumi tentang mereka dan mengapa</strong> &ndash; Salah satu cara terbaik untuk segera berhubungan dengan orang adalah dengan menjadi jujur dan memberitahu mereka mengapa anda menyukai atau mengagumi mereka. Jika menyatakan secara langsung dirasakan kurang tepat, cobalah dengan pernyataan tidak langsung. Kedua pendekatan tersebut bisa sama-sama efektif.</p>\r\n<p>5. <strong>Dengarkan dengan penuh perhatian semua yang mereka katakan</strong> &ndash; Jangan terlalu berfokus pada apa yang akan Anda katakan selanjutnya selagi mereka berbicara. Sebaliknya, dengarkan setiap kata yang mereka katakan dan responlah serelevan mungkin. Hal ini menunjukkan bahwa anda benar-benar mendengarkan apa yang mereka katakan dan anda sepenuhnya terlibat di dalam suasana bersama dengan mereka. Juga pastikan untuk bertanya setiap kali ada sesuatu yang tidak mengerti pada hal-hal yang mereka katakan. Anda tentu saja ingin menghindari semua penyimpangan yang mungkin terjadi dalam komunikasi jika anda ingin mengembangkan hubungan yang sepenuhnya dengan orang tersebut.</p>\r\n<p>6. <strong>Beri mereka kontak mata yang lama</strong> &ndash; kontak mata yang kuat mengkomunikasikan kepada orang lain bahwa anda tidak hanya terpikat oleh mereka dan apa yang mereka katakan tetapi juga menunjukkan bahwa anda dapat dipercaya. Ketika dilakukan dengan tidak berlebihan, mereka juga akan menganggap anda yakin pada diri anda sendiri karena kesediaan anda untuk bertemu mereka secara langsung. Akibatnya, orang secara alami akan lebih memperhatikan anda dan apa yang anda katakan.</p>\r\n<p>7. <strong>Ungkapkan diri anda sebanyak mungkin</strong> &ndash; Salah satu cara terbaik untuk mendapatkan <a href=\"http://www.akuinginsukses.com/11-kunci-untuk-membangun-kepercayaan/\">kepercayaan</a> seseorang adalah dengan mengungkapkan diri seterbuka mungkin. Bercerita tentang kejadian yang menarik dari hidup anda atau hanya menggambarkan contoh lucu dari kehidupan normal sehari-hari. Ketika anda bercerita tentang diri anda, pastikan untuk tidak menyebutkan hal-hal yang menyimpang terlalu jauh dari minat mereka atau bahkan berlebihan. Anda dapat membiarkan mereka mengetahui lebih jauh tentang diri anda seiring berjalannya waktu.</p>\r\n<p>8. <strong>Berikan kesan bahwa anda berdua berada di tim yang sama</strong> &ndash; Gunakan kata-kata seperti &ldquo;kami, kita &rdquo; untuk segera membangun sebuah ikatan. Bila anda menggunakan kata-kata tersebut, anda membuatnya tampak seperti anda dan mereka berada di tim yang sama, sementara orang lain berada di tim yang berbeda.</p>\r\n<p>9. <strong>Berikan mereka senyuman terbaik anda</strong> &ndash; Ketika anda <a href=\"http://www.akuinginsukses.com/5-alasan-mengapa-anda-harus-banyak-tersenyum/\">tersenyum</a> pada orang, anda menyampaikan pesan bahwa anda menyukai mereka dan kehadiran mereka membawa anda kebahagiaan. Tersenyum pada mereka akan menyebabkan mereka sadar ingin tersenyum kembali pada anda yang secara langsung akan membangun hubungan antara anda berdua.</p>\r\n<p>10. <strong>Menawarkan saran yang bermanfaat</strong> &ndash; Kenalkan tempat makan yang pernah anda kunjungi, film yang anda tonton, orang-orang baik yang mereka ingin temui, buku yang anda baca, peluang karir atau apa pun yang terpikirkan oleh anda. Jelaskan apa yang menarik dari orang-orang, tempat atau hal-hal tersebut. Jika anda memberi ide yang cukup menarik perhatian mereka, mereka akan mencari anda ketika mereka memerlukan seseorang untuk membantu membuat keputusan tentang apa yang harus dilakukan selanjutnya.</p>\r\n<p>11. <strong>Beri mereka motivasi</strong> &ndash; Jika orang yang anda hadapi lebih muda atau dalam posisi yang lebih sulit dari anda, mereka mungkin ingin mendengar beberapa kata motivasi dari anda karena anda lebih berpengalaman atau anda tampaknya menjalani kehidupan dengan baik . Jika anda ingin memiliki hubungan yang sehat dengan orang tersebut, anda tentu saja tidak ingin tampak seperti anda memiliki semuanya sementara mereka tidak. Yakinkan mereka bahwa mereka dapat melampaui masalah dan keterbatasan mereka, sehingga mereka akan berharap menjadikan anda sebagai teman yang enak untuk diajak bicara.</p>\r\n<p>12. <strong>Tampil dengan tingkat energi yang sedikit lebih tinggi dibanding orang lain</strong> &ndash; Umumnya, orang ingin berada di sekitar orang-orang yang akan mengangkat mereka, bukannya membawa mereka ke bawah. Jika anda secara konsisten memiliki tingkat energi yang lebih rendah daripada orang lain, mereka secara alami akan menjauh dari Anda menuju seseorang yang lebih energik. Untuk mencegah hal ini terjadi, secara konsisten tunjukkan dengan suara dan bahasa tubuh anda bahwa anda memiliki tingkat energi yang sedikit lebih tinggi sehingga mereka akan merasa lebih bersemangat dan positif berada di sekitar Anda. Namun jangan juga anda terlalu berlebihan berenergik sehingga menyebabkan orang-orang tampak seperti tidak berdaya. Energi dan gairah yang tepat akan membangun antusiasme mereka.</p>\r\n<p>13. <strong>Sebut nama mereka dengan cara yang menyenangkan telinga mereka</strong> &ndash; nama seseorang adalah salah satu kata yang memiliki emosional yang sangat kuat bagi mereka. Tapi hal itu belum tentu seberapa sering anda katakan nama seseorang, namun lebih pada bagaimana anda mengatakannya. Hal ini dapat terbantu dengan cara anda berlatih mengatakan nama seseorang untuk satu atau dua menit sampai anda merasakan adanya emosional yang kuat. Ketika anda menyebutkan nama mereka lebih menyentuh dibanding orang lain yang mereka kenal, mereka akan menemukan bahwa anda lah yang paling berkesan.</p>\r\n<p>14. <strong>Tawarkan untuk menjalani hubungan selangkah lebih maju</strong> &ndash; Ada beberapa hal yang dapat anda lakukan untuk memajukan persahabatan anda dengan seseorang: tawaran untuk makan dengan mereka, berbicara sambil <a href=\"http://www.akuinginsukses.com/fakta-sebenarnya-tentang-mitos-minum-kopi/\">minum kopi</a>, melihat pertandingan olahraga, dll. Meskipun jika orang tersebut tidak menerima tawaran anda, mereka akan tetap tersanjung bahwa anda ingin mereka menjalani persahabatan ke tingkat yang lebih dalam. Di satu sisi, mereka akan memandang anda karena anda memiliki keberanian untuk membangun persahabatan bukan mengharapkan persahabatan yang instan.</p>\r\n<p><strong>Menjadi Seorang Komunikator yang Terampil</strong></p>\r\n<p>Jika anda dapat mengembangkan beberapa saja dari teknik ini, anda secara dramatis akan meningkatkan kemampuan anda untuk berhubungan dengan orang dari semua lapisan dalam hidup anda. Luangkan waktu untuk mengamati orang yang paling sosial dalam kehidupan anda dan anda akan melihat banyak dari metode-metode diatas yang diaplikasikan. Mereka tidak melakukan dengan cara yang kaku, mereka melakukannya secara alami dan dengan cara yang cocok dengan situasi saat itu.</p>\r\n<p>Untuk hasil terbaik, santai saja dan biarkan teknik ini mengalir dari dalam diri anda secara alami. Pilih teknik-teknik yang paling cocok dengan kepribadian anda dan apa tujuan anda ketika berinteraksi dengan orang. Belajarlah untuk bisa merasakan teknik mana yang cocok ataupun tidak cocok dengan berbagai macam karakter orang dan situasi sesuai dengan kepridadian anda.</p>\r\n<p>Ketika anda berhasil mengembangkan kemampuan anda berkomunikasi dengan orang-orang, maka akan membawa anda pada banyak sekali peluang baru yang tidak tersedia untuk anda sebelumnya. Itulah kekuatan dari keterampilan komunikasi yang efektif.</p>', '2016-04-09 19:15:21', 'file_1460204121.jpg', NULL, 'admin', 3),
(7, '101 Pertanyaan Hebat Untuk Membuat Hidup Anda Luar Biasa', '<p>Anthony Robbins pernah mengatakan dalam salah satu bukunya bahwa berpikir sebetulnya adalah proses bertanya dan menjawab pertanyaan-pertanyaan. Beliau kemudian menambahkan bahwa orang-orang yang sukses adalah mereka yang selalu bertanya pada dirinya sendiri.</p>\r\n<p>Berikut adalah 101 pertanyaan untuk membuat hidup anda luar biasa :</p>\r\n<p>1. Apa yang saya inginkan?</p>\r\n<p>2. Untuk hal-hal apa saja saya berterima kasih?</p>\r\n<p>3. Apakah yang hilang dalam hidup saya?</p>\r\n<p>4. Apakah saya melihat hal-hal baru di dunia ini setiap hari?</p>\r\n<p>5. Apakah saya menyediakan sedikit waktu untuk mendengarkan orang lain?</p>\r\n<p>6. Apakah saya cukup bersenang-senang?</p>\r\n<p>7. Bagaimana saya <a href=\"http://www.akuinginsukses.com/9-tips-untuk-hidup-lebih-bahagia/\">menjadikan hidup ini lebih ceria</a>?</p>\r\n<p>8. Apa yang saya inginkan lebih dalam hidup?</p>\r\n<p>9. Apa yang tidak terlalu saya inginkan dalam hidup?</p>\r\n<p>10. Apakah saya selalu mencari peluang-peluang?</p>\r\n<p>11. Apakah saya menangkap peluang-peluang yang ada?</p>\r\n<p>12. Apakah saya mempunyai pikiran yang terbuka?</p>\r\n<p>13. Apakah saya cukup fleksibel?</p>\r\n<p>14. Apakah saya cepat menghakimi orang lain?</p>\r\n<p>15. Apakah saya selalu memperhitungkan resiko?</p>\r\n<p>16. Apakah saya tulus memuji orang lain?</p>\r\n<p>17. Apakah saya menghargai apa yang orang lain lakukan untuk saya?</p>\r\n<p>18. Ke tempat mana sajakah saya ingin pergi?</p>\r\n<p>19. Siapa sajakah orang yang ingin saya jumpai?</p>\r\n<p>20. Petualangan apa sajakah yang ingin saya ikuti?</p>\r\n<p>21. Apakah saya peduli dengan apa yang orang lain pikirkan tentang saya?</p>\r\n<p>22. Apakah saya cepat tersinggung?</p>\r\n<p>23. Apakah yang membuat saya bahagia?</p>\r\n<p>24. Adakah hal yang saya tunda?</p>\r\n<p>25. Apakah saya selalu memikirkan diri sendiri?</p>\r\n<p>26. Apakah saya suka menyimpan dendam?</p>\r\n<p>27. Apakah saya selalu mengingat-ngingat masa lalu?</p>\r\n<p>28. Apakah saya membiarkan pikiran negatif orang lain mempengaruhi saya?</p>\r\n<p>29. Apakah saya bisa memaafkan diri sendiri?</p>\r\n<p>30. Apakah saya cukup sering tersenyum?</p>\r\n<p>31. Apakah saya cukup sering tertawa?</p>\r\n<p>32. Apakah saya mengelilingi diri saya dengan orang-orang positif?</p>\r\n<p>33. Apakah saya orang yang positif?</p>\r\n<p>34. Apakah saya menyediakan cukup waktu untuk merawat diri?</p>\r\n<p>35. Apakah ambisi rahasia saya?</p>\r\n<p>36. Apakah yang ingin orang-orang ingat tentang saya di akhir hidup nanti?</p>\r\n<p>37. Apakah arti sukses untuk saya?</p>\r\n<p>38. Bagaimana saya dapat memberi arti bagi hidup orang lain?</p>\r\n<p>39. Bagaimana saya dapat melayani sesama?</p>\r\n<p>40. Hal apakah yang dapat saya lakukan lebih baik dibandingkan orang lain?</p>\r\n<p>41. Apakah 3 kekuatan terbesar saya?</p>\r\n<p>42. Apakah saya bergerak menuju ke pencapaian mimpi-mimpi saya?</p>\r\n<p>43. Apakah saya menceritakan pada orang lain apa yang sungguh-sungguh saya inginkan dalam hidup?</p>\r\n<p>44. Seperti apakah rupa hari yang indah menurut saya?</p>\r\n<p>45. Ingin seperti apakah anda 1 tahun lagi? 5 tahun lagi? 10 tahun lagi? 20 tahun lagi?</p>\r\n<p>46. Seperti apakah bentuk lingkungan untuk hidup yang baik menurut saya?</p>\r\n<p>47. Apakah yang ingin saya perbuat jika saya tidak mempunyai rasa takut?</p>\r\n<p>48. Apakah yang ingin saya perbuat jika uang bukanlah hal yang penting?</p>\r\n<p>49. Alasan-alasan apa sajakah yang sering saya ucapkan?</p>\r\n<p>50. Apakah saya menikmati apa yang saya lakukan sehari-hari?</p>\r\n<p>51. Apakah saya berada di jalan yang benar?</p>\r\n<p>52. Apakah saya meyayangi diri sendiri?</p>\r\n<p>53. Apakah saya baik pada orang lain?</p>\r\n<p>54. Apakah saya mengambil sesuatu tanpa imbalan?</p>\r\n<p>55. Apakah saya sedang melakukan hal yang paling penting saat ini?</p>\r\n<p>56. Apakah ada hal-hal dalam hidup yang perlu saya beri perhatian lebih?</p>\r\n<p>57. Apakah saya sudah menggunakan waktu saya dengan sebaik-baiknya?</p>\r\n<p>58. Apakah yang bisa saya lakukan saat ini yang dapat membuat perbedaan terbesar dalam hidup?</p>\r\n<p>59. Apakah yang sedang saya hindari?</p>\r\n<p>60. Hal-hal apa sajakah yang saya bisa bertoleransi?</p>\r\n<p>61. Apakah saya membuat tujuan-tujuan yang jelas dengan batas waktu pencapaiannya?</p>\r\n<p>62. Apakah saya memegang janji-janji yang telah saya buat pada diri sendiri?</p>\r\n<p>63. Apakah saya memegang janji-janji yang telah saya buat pada orang lain?</p>\r\n<p>64. Jika saya ingin kehidupan saya sempurna, apakah yang harus saya rubah?</p>\r\n<p>65. Apakah yang sedang saya cari sungguh-sungguh saat ini?</p>\r\n<p>66. Bagaimana saya membuat hidup saya lebih sederhana?</p>\r\n<p>67. Kegiatan apa saja yang saya lakukan tetapi saya tidak menikmatinya? Apakah kegiatan tersebut sungguh-sungguh harus dilakukan? Dapatkan saya mendelegasikannya atau membayar orang lain untuk melakukan itu?</p>\r\n<p>68. Apakah saya melihat diri saya sebagai seorang yang cukup kreatif?</p>\r\n<p>69. Apakah saya membiarkan diri saya untuk menjadi orang yang kreatif?</p>\r\n<p>70. Dapatkah saya menjadi seseorang yang spontan?</p>\r\n<p>71. Apakah saya terlalu kritis pada diri sendiri?</p>\r\n<p>72. Apakah saya terlalu kritis pada orang lain?</p>\r\n<p>73. Apakah saya dapat melihat permasalahan dari sudut pandang yang berbeda?</p>\r\n<p>74. Hal-hal apa sajakah yang telah saya selesaikan?</p>\r\n<p>75. Hal-hal apa sajakah yang menjadi sumber stress dalam hidup?</p>\r\n<p>76. Bagaimana saya dapat mengurangi stress dalam hidup?</p>\r\n<p>77. Kemana sajakah uang saya dipergunakan?</p>\r\n<p>78. Bisakah saya mengelola keuangan saya?</p>\r\n<p>79. Punyakah saya rencana keuangan untuk masa depan?</p>\r\n<p>80. Untuk apa sajakah waktu saya dipergunakan?</p>\r\n<p>81. Sudahkah saya membuat sistim pengelolaan waktu yang efisien?</p>\r\n<p>82. Apakah 3 prioritas terbesar saya dalam hidup?</p>\r\n<p>83. Siapakah orang terpenting dalam hidup saya?</p>\r\n<p>84. Siapakah yang mencintai saya?</p>\r\n<p>85. Siapakah yang peduli kepada saya?</p>\r\n<p>86. Untuk siapakah anda bekerja keras?</p>\r\n<p>87. Apakah tempat tinggal dan lingkungan kerja saya telah diatur sedemikian rupa sehingga memberi kenyamanan pada saya?</p>\r\n<p>88. Apakah saya mempunyai pola hidup yang sehat?</p>\r\n<p>89. Apakah saya sering terbawa emosi?</p>\r\n<p>90. Apakah saya dapat melupakan kesalahan-kesalahan yang telah saya buat di masa lalu?</p>\r\n<p>91. Apakah saya mengijinkan diri saya untuk melakukan kegagalan?</p>\r\n<p>92. Apakah saya mempelajari kegagalan-kegagalan saya?</p>\r\n<p>93. Apakah saya cepat menanggapi ketika sesuatu berjalan tidak semestinya?</p>\r\n<p>94. Apakah keyakinan-keyakinan saya telah bekerja dengan baik?</p>\r\n<p>95. Apakah saya melonggarkan aturan-aturan yang telah saya buat untuk diri sendiri dan orang lain?</p>\r\n<p>96. Apakah impian masa kecil saya yang terlupakan?</p>\r\n<p>97. Siapa sajakah idola/tokoh yang saya tiru?</p>\r\n<p>98. Apakah saya asli? Apakah saya menjadi diri saya sendiri atau sedang mencoba menjadi seseorang yang lain?</p>\r\n<p>99. Bagaimana jika &hellip;?</p>\r\n<p>100. Mengapa tidak &hellip;?</p>\r\n<p>101. Bagaimana saya dapat &hellip;?</p>', '2016-04-09 19:22:49', 'file_1460204569.jpg', NULL, 'admin', 1),
(8, 'Apakah Anda Melakukan 9 Kesalahan ini Dalam Percakapan?', '<p>Cara kita berkomunikasi dengan orang lain adalah sebuah kebiasaan. Karenanya, seringkali kita tidak mengetahui apakah pola percakapan yang kita lakukan sudah baik atau belum baik.</p>\r\n<p>Dalam kehidupan sehari-hari pasti anda sering berkata dalam hati : &rdquo;ah tidak enak mengobrol dengan si A, lebih enak saya mencari si B dan mengobrol dengannya.&rdquo;</p>\r\n<p>Saya tidak tahu anda sendiri masuk ke dalam kategori mana : si A ataukah si B, mudah-mudahan bukan si A karena si A biasanya selalu dijauhi oleh teman-temannya.</p>\r\n<p>Andai saja anda masuk dalam kategori si A, anda tidak perlu khawatir karena pola percakapan yang kurang baik tentu saja dapat diperbaiki. Di bawah ini adalah beberapa kesalahan yang umum dilakukan oleh orang-orang dalam percakapan beserta beberapa solusi untuk memperbaikinya.</p>\r\n<p><strong>1. Tidak Mendengarkan</strong></p>\r\n<p>Sebagian besar orang bukanlah tipekal pendengar yang baik. Ini tentu saja berhubungan dengan ego mereka yang tinggi, yang justru ingin lebih didengarkan dibanding mendengarkan. Dalam setiap percakapan mereka sepertinya tidak tahan menunggu giliran untuk berbicara.</p>\r\n<p>Belajarlah menekan ego anda untuk <a href=\"http://www.akuinginsukses.com/belajar-mendengar/\">mendengarkan</a> secara sungguh-sungguh apa yang orang lain katakan.</p>\r\n<p>Ketika anda mengambil sikap untuk mulai mendengarkan, anda sedang membuka jalan untuk terciptanya suatu hubungan (apapun) yang sangat potensial. Namun tetap hindari jawaban singkat &ldquo;ya&rdquo; atau &ldquo;tidak&rdquo;, karena jika anda seperti itu lawan bicara anda akan memberikan informasi setengah-setengah kepada anda. Antusiaslah terhadap topik yang sedang mereka bicarakan, sebagai contoh, jika lawan bicara anda sedang bercerita tentang pengalamannya mendaki gunung pada akhir minggu lalu, anda dapat bertanya kepadanya :</p>\r\n<ul>\r\n<li>gunung apa yang anda daki?</li>\r\n<li>apa yang ada sukai dari mendaki      gunung?</li>\r\n<li>apa saja yang anda lakukan di      atas gunung?</li>\r\n</ul>\r\n<p>Pertanyaan-pertanyaan semacam itu akan membuat topik percakapan menjadi lebih mendalam, lebih menarik, serta memancing lebih banyak lagi topik untuk didiskusikan. Dan yang tak kalah pentingnya lawan bicara anda mengetahui bahwa anda sungguh-sungguh sedang mendengarkannya. Hal ini tentu saja akan membuat tingkat respek lawan bicara anda bertambah pada anda.</p>\r\n<p><strong>2. Terlalu Banyak Bertanya</strong></p>\r\n<p>Beberapa pertanyaan dapat berarti anda antusias dengan lawan bicara anda, namun terlalu banyak bertanya pun akhirnya menjadi tidak baik karena sepertinya anda sedang menginterogerasi lawan bicara anda, dan dapat membuat mereka menjadi tidak nyaman.</p>\r\n<p>Cobalah gabungkan antara pernyataan dan pertanyaan, misalkan :</p>\r\n<ul>\r\n<li>saya pun minggu lalu berakhir      pekan dengan memancing bersama teman-teman kerja saya. Apakah anda suka      memancing?</li>\r\n</ul>\r\n<p><strong>3. Kehabisan Topik Untuk Dibicarakan</strong></p>\r\n<p>Dalam percakapan mungkin anda sering merasa kehabisan topik untuk dibicarakan dengan lawan bicara anda, terutama jika anda berbicara dengan seseorang yang baru saja anda kenal. Untuk mencegah hal ini terjadi, ada beberapa saran mengenai topik yang bisa anda bicarakan :</p>\r\n<ul>\r\n<li>Seorang bijak pernah berkata &ldquo;Jangan      tinggalkan rumah tanpa membaca surat kabar terlebih dahulu. Jika anda      kehabisan topik untuk dibicarakan, anda bisa memulai berbicara tentang      berita yang sedang hangat saat ini.&rdquo;</li>\r\n<li>Bicarakan tentang sesuatu yang      berada disekeliling anda. Mungkin tentang aquarium yang berada dibelakang      anda, anak-anak yang sedang bermain di samping anda, atau apapun saja yang      memungkinkan untuk dibicarakan di sekeliling anda.</li>\r\n</ul>\r\n<p><strong>4. Penyampaian yang Buruk</strong></p>\r\n<p>Salah satu hal yang paling penting dalam percakapan bukanlah apa yang anda katakan, melainkan bagaimana anda menyampaikannya. Perubahan dalam kebiasaan ini akan membuat perbedaan besar, karena suara dan bahasa tubuh adalah bagian yang sangat vital dalam percakapan. Beberapa hal dibawah ini untuk anda pertimbangkan :</p>\r\n<ul>\r\n<li>Sampaikan dengan perlahan.      Ketika anda berbicara tentang suatu hal yang sangat menyenangkan, mudah      sekali bagi anda untuk memulai percakapan tersebut dan bahkan anda dapat      berbicara dengan sangat cepat. Usahakan anda memperlambat kecepatan bicara      anda, karena akan lebih mudah bagi lawan bicara anda untuk mendengarkan      dan menangkap maksud yang ingin anda sampaikan.</li>\r\n<li>Bicaralah dengan suara lantang.      Tidak perlu ragu, karena lawan bicara anda memang ingin mendengarkan anda.</li>\r\n<li>Bicaralah dengan jelas. Jangan      seperti bergumam.</li>\r\n<li>Bicaralah dengan suara yang      tidak monoton. Libatkan emosi dalam suara anda.</li>\r\n<li>Gunakan jeda. Penyampaian      dengan perlahan ditambah dengan jeda akan membuat lawan bicara anda lebih      perhatian dalam mendengarkan dan suasana pun menjadi lebih rileks.</li>\r\n<li>Gunakan bahasa tubuh yang baik.      Dalam artikel mendatang, saya akan membahas bagaimana menggunakan <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> yang baik.</li>\r\n</ul>\r\n<p><strong>5. Menginterupsi</strong></p>\r\n<p>Apakah yang anda rasakan jika pembicaraan anda dipotong oleh lawan bicara anda? &hellip; Ya, lawan bicara anda pun akan merasakan hal yang sama jika anda memotong pembicaraannya. Biarkan lawan bicara anda menghabiskan terlebih dahulu apa yang ingin disampaikan. Itu adalah salah satu bentuk penghargaan anda pada lawan bicara anda. Carilah keseimbangan antara mendengarkan dan berbicara.</p>\r\n<p><strong>6. Keinginan &ldquo;Selalu Benar&rdquo;</strong></p>\r\n<p>Orang tidak akan terkesan kepada anda jika anda selalu ingin merasa benar dalam setiap percakapan. Seringkali pembicaraan bukan betul-betul sebuah diskusi. Kadang-kadang kita ingin menjaga mood tetap baik dengan berbicara dengan seseorang. Sebagai contoh : salah satu teman anda ingin bercerita kepada anda mengenai serunya pengalaman berarung jeram sampai-sampai perahu karetnya terbalik. Namun anda malah berbicara bagaimana berarung jeram yang baik. Saya yakin mood teman anda akan langsung berubah.</p>\r\n<p>Duduklah santai, berbicara dan tidak berdebat.</p>\r\n<p><strong>7. Berbicara Tentang Hal-Hal Aneh atau Negatif</strong></p>\r\n<p>Pernahkan anda berkenalan dengan seseorang dan setelah itu ia berbicara tentang hal-hal aneh atau negatif, seperti kesehatannya yang memburuk, cerita pembunuhan, atasannya yang menyebalkan, atau menggunakan bahasa aneh yang hanya ia dan temannya yang mengetahui artinya.</p>\r\n<p>Saya rasa tidak ada manfaatnya berbicara hal-hal aneh atau negatif seperti itu. Orang-orang akan senang berbicara kepada anda jika anda selalu memberikan <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">energi positif</a> dalam setiap kata-kata yang anda keluarkan.</p>\r\n<p><strong>8. Membosankan</strong></p>\r\n<p>Jangan bercerita panjang-panjang tentang mobil anda yang baru saja anda beli atau rumah anda yang baru saja selesai dibangun. Rata-rata orang tidak terlalu tertarik dengan cerita semacam itu, yang terlalu mengekspose kemampuan diri. Carilah topik yang mengarah pada hal-hal yang bergairah atau hal-hal yang lucu misalkan. Bisa juga anda menceritakan tentang pengalaman anda berakhir pekan di puncak kemarin atau rencana anda pada liburan Lebaran mendatang. Intinya adalah sesuatu yang positif. Bukan juga mengeluh tentang atasan atau pekerjaan anda.</p>\r\n<p>Dale Carnegie pernah berkata :<br /> <em>&rdquo;Dalam 2 bulan anda akan mempunyai lebih banyak teman dengan cara antusias terhadap cerita-cerita mereka dibandingkan 2 tahun anda mencari teman dengan cara berusaha memancing mereka tertarik pada cerita-cerita anda.&rdquo;</em></p>\r\n<p>Cobalah memberi peran lebih dalam berbicara untuk lawan bicara anda. Kelak anda akan membangun sebuah hubungan yang berkualitas.</p>\r\n<p>Mungkin anda sudah sering mendengar istilah &ldquo;mengapa Tuhan menciptakan 2 telinga dan 1 mulut? &hellip; agar kita lebih banyak mendengarkan dibanding berbicara.</p>\r\n<p><strong>9. Tidak Merespon Dengan Baik</strong></p>\r\n<p>Jika seseorang bercerita tentang pengalamannya, jangan sekedar mengangguk atau menjawab dengan kalimat singkat. Terbukalah dan katakan apa yang anda pikirkan. Ekspresikan perasaan anda.</p>\r\n<p>Sebagai penutup, anda tidak harus memperbaiki ke-9 langkah diatas secara sekaligus. Pilihlah kira-kira 3 hal terpenting yang menurut anda perlu diperbaiki dan selama 3-4 minggu anda berusaha melakukan hal tersebut secara terus menerus sampai akhirnya menjadi suatu kebiasaan.</p>\r\n<p>Mudah-mudahan tips percakapan ini bermanfaat bagi anda sehingga kelak anda dapat menjadi teman bicara yang baik bagi teman-teman atau pasangan anda.</p>', '2016-04-09 19:23:49', 'file_1460204629.jpg', NULL, 'admin', 3),
(9, 'Bagaimana Membebaskan Diri Anda dari Gosip', '<p><strong>Bahaya Gosip</strong></p>\r\n<p>Gosip merupakan salah satu masalah paling umum baik di tempat kerja maupun dalam hubungan. Masalah terbesar dari gosip adalah kebanyakan orang tidak menyadari ketika sebuah diskusi berubah menjadi gosip dan lebih parahnya lagi mereka tidak menyadari dampak dari gosip tersebut. Gosip adalah pembunuh sebuah hubungan dan hal ini terjadi lebih sering dari yang anda percayai. Gosip pada dasarnya adalah apapun yang dapat dianggap sebagai hal negatif tentang seseorang yang dibicarakan dengan orang lain dimana mereka tidak mendengarnya langsung dari pihak yang bersangkutan. Gosip bisa berupa sesuatu yang sangat sederhana tanpa adanya niat untuk menyakiti orang tersebut dan bisa pula sesuatu yang membunuh karakter seseorang.</p>\r\n<p>Tidak ada satu hal pun yang positif dari gosip dan gosip cenderung menyukai orang yang dibicarakan dan orang-orang yang terlibat ketika membicarakan gosip tersebut. Ada pula risiko yang timbul jika orang yang dibicarakan mengetahui orang yang menyabarkan gosip tersebut, juga rasa sakit yang muncul akibat informasi negatif yang tersebar. Beberapa bahaya lain yang muncul akibat gosip:</p>\r\n<p>&bull; <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">Stress</a> bagi mereka yang terlibat dalam gosip<br /> &bull; Menyakiti perasaan<br /> &bull; Menghancurkan kerja sama tim<br /> &bull; Membuat orang enggan membagikan kerapuhan mereka<br /> &bull; Menghambat komunikasi yang membutuhkan rasa percaya dengan memberi dorongan bagi orang untuk menjaga mulut mereka<br /> &bull; Menciptakan reputasi yang negatif</p>\r\n<p><strong>Pilihan-pilihan Anda Terhadap Gosip</strong></p>\r\n<p>Dampak-dampak negatif tersebut seharusnya cukup untuk meyakinkan siapapun untuk menghindari gosip, sayangnya, mereka tetap melakukannya. Gosip sangatlah menggoda dan sering terjadi karena terdorong perilaku orang-orang sekitar. Dunia gosip membuka pintu lebar bagi semua gosip baru dan mereka cenderung menjadikan orang-orang yang tidak terlibat dalam gosip yang bersangkutan untuk menjadi korban dari gosip yang lebih baru. Terkadang lebih mudah untuk ikut terlibat dalam gosip daripada mengambil risiko menjadi korban dan bagi kebanyakan orang, dengan berbagai alasan, gosip memiliki daya tarik yang membuat orang tertarik untuk terlibat. Gosip adalah sebuah hal yang egois dan berbahaya karena merendahkan dan menghancurkan seseorang (baik secara langsung maupun tak langsung) untuk membuat gosip tersebut terdengar lebih baik. Inilah alasannya mengapa gosip sangatlah merusak, terutama bagi orang yang digosipkan.</p>\r\n<p>Hal terbaik dari gosip adalah anda bisa dengan mudah menjauhkan diri darinya jika anda memutuskan untuk menghindarinya dan mempelajari beberapa teknik untuk mengenalinya, menanganinya, dan menjaga jarak dari masalah yang ditimbulkan. Jadi bagaimana kita bisa melakukannya?</p>\r\n<p><strong>Kenali Gosip</strong></p>\r\n<p>Seringkali gosip merupakan sesuatu yang jelas dan tidak ditutup-tutupi. Kadang gosip bisa merupakan sebuah pertanyaan sederhana yang diajukan seseorang tentang apa yang anda dengar atau ketahui atau pikirkan mengenai orang lain atau tindakan mereka. Hal tersebut bisa terdengar seperti:</p>\r\n<p>&bull; Apakah kau dengar apa yang Frank katakan mengenai Sally?<br /> &bull; Kau tak akan menyangka apa John lakukan minggu ini?<br /> &bull; Aku dengar Gerry &hellip;<br /> &bull; Apakah kau sudah melihat pacar baru Lisa?</p>\r\n<p>Kata-kata tersebut tidak selalu berakhir dengan gossip negatif namun mereka merupakan pembicaraan mengenai orang lain dan cukup mudah untuk dikenali dalam sebuah percakapan atau awal sebuah gosip. Sayangnya, tidak semua gosip bisa dikenali dengan mudah, dan kadang gosip lebih tersamar. Gosip kadang berawal dari pembicaraan dengan seorang teman atau rekan kerja; diawali dengan pembicaraan yang positif hingga akhirnya berujung pada pembicaraan negatif. Jika anda tidak membicarakan cara untuk membantu orang yang sedang anda bicarakan, mendukung mereka untuk <a href=\"http://www.akuinginsukses.com/teknik-pemecahan-masalah/\">menyelesaikan masalah</a> atau melakukan tindakan positif lain ketika membicarakan orang lain; kemungkinan besar pembicaraan itu akan berakhir menjadi gosip. Pada dasarnya, jika anda sedang membicarakan orang lain, anda perlu berhenti dan memikirkan jika pembicaraan tersebut akan membantu orang tersebut atau tidak. Jika tidak, maka pembicaraan itu adalah gosip dan tidak perlu anda lanjutkan.</p>\r\n<p><strong>Mempengaruhi Gosip</strong></p>\r\n<p>&ldquo;Lidah mempunyai kuasa untuk menyelamatkan hidup atau merusaknya; orang harus menanggung akibat ucapannya.&rdquo;</p>\r\n<p>Karena gosip sangatlah kuat, gosip memiliki pengaruh yang besar dan harus dilawan melalui pengaruh positif dalam meresponnya. Terdapat beberapa tindakan yang bisa anda lakukan untuk melawan gosip.</p>\r\n<p><strong>Acuhkan gosip:</strong></p>\r\n<p>&bull; Hindari orang-orang yang bergosip dan jangan beri mereka kesempatan untuk menyebarkannya<br /> &bull; Tinggalkan ruangan atau pembicaraan saat gosip dimulai<br /> &bull; Jangan merespon pertanyaan yang menanyakan opini mengenai orang lain atau jebakan gosip lainnya<br /> &bull; Acuhkan gosip dan jangan memulai sebuah percakapan yang berujung menjadi gosip</p>\r\n<p><strong>Cegah gosip:</strong></p>\r\n<p>&bull; Jangan pernah memulai gosip dari diri anda<br /> &bull; Ubah topik pembicaraan jika sebuah pembicaraan berubah menjadi gosip<br /> &bull; Tolaklah untuk mendengar atau merespon setiap gosip<br /> &bull; Sembunyikan perasaan sakit atau reaksi dramatis terhadap gosip. Hal tersebut merupakan makanan bagi gosip untuk berlanjut.</p>\r\n<p><strong>Lawan gosip:</strong></p>\r\n<p>&bull; Katakan dengan sopan bahwa lebih baik membicarakan hal tersebut dengan orang yang bersangkutan<br /> &bull; Jika anda tahu darimana gosip tersebut bersumber, temui orang tersebut dan katakan kepada mereka bahwa anda tidak suka dengan gosip tersebut dan hal itu menyebabkan rasa sakit; terlepas dari gosip tersebut disengaja atau tidak<br /> &bull; Jika anda mendengar seseorang memulai sebuah gosip, ajukan diri untuk menemui orang yang dibicarakan dengan orang yang memulai gosip untuk mendiskusikannya<br /> &bull; Jawab gosip dengan, &ldquo;Maukah hal tersebut dibicarakan oleh orang lain tanpa sepengetahuan-mu?&rdquo; lalu pergilah<br /> &bull; Katakan bahwa saya tidak suka membicarakan orang lain karena saya tidak suka orang lain membicarakan saya<br /> &bull; Katakan bahwa anda tidak suka membicarakan orang lain kecuali pembicaraan tersebut dapat membantu atau mendukung mereka<br /> &bull; Katakan bahwa anda tidak mau membicarakan hal-hal negatif mengenai orang lain kecuali orang tersebut terlibat dalam percakapan</p>', '2016-04-09 19:25:33', 'file_1460204733.jpg', NULL, 'admin', 1);
INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(10, 'Bagaimana Membentuk Pola Pikir yang Baru', '<p>Pola pikir kita (atau kadang-kadang disebut paradigma kita) adalah jumlah total keyakinan, nilai, identitas, harapan, sikap, kebiasaan, keputusan, pendapat, dan pola-pola pemikiran kita &mdash; tentang diri kita sendiri, orang lain, dan bagaimana kehidupan bekerja. Ini adalah saringan yang dengannya kita menafsirkan apa yang kita lihat dan alami. Pola pikir Anda membentuk kehidupan Anda dan menarik kepada diri Anda hasil-hasil yang merupakan refleksi pasti pola pikir itu. Apa yang Anda percayai akan terjadi, benar-benar terjadi.</p>\r\n<p>Kita mendekati, bereaksi, dan pada kenyataannya menciptakan dunia kita berdasarkan pola pikir individual kita sendiri. Pola pikir kita memberitahu kita bagaimana permainan hidup ini harus dimainkan, dan mengatur apakah kita memainkannya secara berhasil atau tidak. Kita mungkin memiliki pola pikir, misalnya, yang memberitahu kita, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan.&rdquo; Atau kita mungkin memiliki pola pikir yang lebih positif, seperti, &ldquo;Aku punya kemampuan yang hebat dan orang-orang ingin bekerja sama denganku.&rdquo;</p>\r\n<p>Pikiran adalah magnet yang sangat kuat. Apa pun yang diberitahukan pola pikir kita kepada kita adalah apa yang kita tarik, baik kita menyadarinya atau tidak! Jika Anda memiliki keyakinan bahwa, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan,&rdquo; misalnya, Anda tidak perlu menyadari akan keyakinan itu untuk mengalami perjuangan dalam hidup Anda. Pada kenyataannya, jika Anda ingin melihat apa pola pikir Anda sebenarnya, Anda hanya perlu melihat hidup Anda dan hasil-hasil Anda. Hasil yang kita peroleh sesuai dengan apa yang kita yakini.</p>\r\n<p>Jika kita tidak memeriksa pola pikir kita dan bertanya apakah pola pikir itu mendukung atau membatasi kita, kita beroperasi &ldquo;secara otomatis.&rdquo; Kita tidak lagi memilih keyakinan dan pola pikir kita, tetapi keyakinan dan pola pikir itu menyebabkan kita menjalani hidup dengan cara tertentu. Kita menciptakan pola pikir kita sendiri, tetapi pada saat yang sama, pola pikir kita menciptakan diri kita. Jika kita tidak mempertanyakan keyakinan yang menyebutkan bahwa &ldquo;kehidupan ini sulit,&rdquo; misalnya, kita akan terus berjuang bahkan tanpa mengetahui penyebabnya.</p>\r\n<p>Kita semua memiliki keyakinan lama yang tersembunyi. Banyak dari keyakinan itu diperoleh pada masa kanak-kanak dan tidak lagi berguna bagi kita atau mendukung keberhasilan kita. Ketika Alice mulai memeriksa pola pikirnya, ia menyadari ia memiliki keyakinan bahwa &ldquo;Uang berasal dari kedua orangtua saya.&rdquo; Ketika ia masih kecil dan ingin es krim, mainan, atau boneka, dari orangtuanyalah uang berasal. Ketika remaja, dari orangtuanyalah uang tunjangannya berasal. Ketika dewasa, ia sering menemukan dirinya dalam kesulitan finansial dan terpaksa meminjam sejumlah besar uang kepada kedua orangtuanya.</p>\r\n<p>Joel Arthur Barker menulis dalam Paradigms, &ldquo;Mengabaikan kekuatan paradigma untuk memengaruhi pendapat Anda berarti menempatkan diri Anda dalam risiko ketika menjajaki masa depan. Agar mampu membentuk masa depan, Anda harus siap dan mampu mengubah paradigma Anda.&rdquo;</p>\r\n<p>Pola pikir menggerakkan perilaku kita. Jika Anda ingin melihat pola pikir Anda sendiri dan keluarga serta teman-teman Anda, cobalah mengadakan permainan kartu dengan keluarga selama liburan. Kemungkinan besar orang-orang akan melakukan di sekeliling meja kartu apa yang mereka lakukan dalam hidup mereka. Apakah beberapa orang bersikap jemu? Kompetitif? Santai? Apakah mereka ingin menyelamatkan muka atau bersikap tenang, atau apakah mereka mengambil risiko menyinggung perasaan orang lain agar dapat mengendalikan dan mendominasi? Apakah mereka malu-malu atau menguasai? Bagaimana mereka memandang orang lain akan bertindak terhadap mereka? Apakah beberapa orang berpikir mereka akan dimanfaatkan atau dibuat tampak bodoh? Apakah mereka berpikir orang lain bodoh atau berperilaku buruk? Semua perilaku ini mencerminkan pola pikir tertentu, cara melihat diri sendiri, orang lain, dan dunia.</p>\r\n<p>Kita dapat mempercayai apa pun yang ingin kita percayai. Dan kita dapat menemukan banyak bukti untuk mendukung keyakinan atau pola pikir apa pun yang kita pilih, jadi kita juga dapat memilih keyakinan yang memperkuat kita dan menggerakkan kita untuk maju. Kita mulai berhasil ketika kita memahami bahwa kita mempunyai sebuah pilihan, karena, pada saat itu, kita dapat mulai memilih keyakinan yang membawa kita ke mana kita ingin pergi. William James, bapak psikologi modern, berkata, &ldquo;Yakinlah bahwa hidup Anda berharga, maka keyakinan Anda akan menciptakan faktanya.&rdquo;</p>\r\n<p>Agar berhasil, Anda perlu memahami pola pikir Anda. Anda harus membawanya ke tingkat sadar, memerhatikannya dengan baik, dan melihat apakah ada sesuatu yang ingin Anda ubah. Jika tidak, keyakinan Anda yang tersembunyi akan mengendalikan Anda. Jika Anda tidak mengetahui pola pikir Anda, Anda tidak dapat melakukan apa pun terhadapnya. Jika Anda ingin mengubah hasil-hasil Anda, Anda harus mengubah pola pikir Anda.</p>\r\n<p>Pergeseran pola pikir berarti berubah dari satu pola pikir kepada pola pikir yang lain. Dalam Ilmu Sukses, ini berarti beralih dari satu pola pikir yang menghalangi <a href=\"http://www.akuinginsukses.com/keberhasilan-adalah-arah-yang-anda-pilih/\">keberhasilan</a> ke cara berpikir yang mendorong dan menarik keberhasilan.</p>\r\n<p>Ketika menggeser pola pikir Anda, Anda beralih ke sebuah permainan baru dan seperangkat aturan yang baru. Ketika permainan Anda dan aturan berubah, seluruh dunia Anda mulai berubah. Anda mulai mengeluarkan energi yang berbeda, sehingga Anda menarik jenis orang-orang dan situasi yang berbeda ke dalam hidup Anda. Ketika Anda mentransformasi pemikiran Anda, Anda mentransformasi dunia Anda. Oliver Wendell Holmes pernah berkata, &ldquo;Pikiran manusia yang dibentangkan ke sebuah gagasan baru tidak pernah kembali ke dimensi asalnya.&rdquo;</p>\r\n<p>Banyak orang mengatakan mereka ingin mengubah hidup mereka. Mereka menghadiri ceramah pembicara motivasi atau membuat janji Tahun Baru dan menjadi sangat gembira dengan semua perubahan yang mereka lihat untuk diri mereka sendiri. Atau mereka pergi ke seminar atau membaca buku dan melihat bahwa mereka ingin mulai melakukan hal-hal secara berbeda. Mereka bahkan mungkin melakukan beberapa perubahan dalam beberapa minggu pertama. Tetapi kemudian energi mereka tampak berkurang. Antusiasme mereka merosot. Sebelum Anda mengetahui hal itu, mereka kembali ke dalam rutinitas lama mereka. Ketika ini terjadi, penyebabnya adalah mereka mencoba untuk memanipulasi akibat-akibat dari kehidupan mereka, dan bukannya mencari sebabnya. Mereka mencoba untuk mengubah hasil tanpa mengubah pola pikir mereka.</p>\r\n<p>Untuk memberikan hasil yang dramatis dan permanen, Anda harus mengubah cara berpikir. Jika tidak ada pergeseran pola pikir, setiap perubahan atau perbaikan hanya akan bersifat minimal dan/atau berjangka pendek.</p>\r\n<p><strong>Pikiran Bawah Sadar Anda</strong></p>\r\n<p>Pikiran bawah sadar adalah pusat kekuatan Anda, bagian yang paling menakjubkan dari diri Anda. Pikiran itu adalah sisi spiritual diri kita, dan beberapa orang bahkan menyebutnya &ldquo;jiwa.&rdquo; Pikiran bawah sadar mengekspresikan diri melalui perasaan dan intuisi. Ia tidak memiliki batas-batas kecuali yang ditempatkan atasnya oleh pikiran sadar Anda pada waktu pikiran sadar itu memilih pikiran atau oleh pengondisian Anda sebelumnya. Pikiran bawah sadar adalah karunia terbesar yang Anda miliki, peti harta karun yang memiliki potensi yang sangat besar.</p>\r\n<p>Pikiran bawah sadar berfungsi dalam setiap sel tubuh Anda. Cobalah eksperimen ini: Gerakkan lengan kanan Anda secara memutar. Pada waktu Anda melakukannya, pikirkanlah fakta bahwa pikiran bawah sadar Andalah yang melakukan perintah ini. Tidak ada cara bagi Anda untuk dapat menggerakkan kurang lebih 157 otot antara bahu dan pergelangan tangan Anda secara sadar. Itu terlalu banyak bagi pikiran sadar Anda untuk mengaturnya. Terlalu rumit untuk mengatakan, &ldquo;Nah, mari kita putar otot No. 63 sepuluh derajat ke kanan, otot No. 32 sebelas derajat ke kiri, dan seterusnya.&rdquo;</p>\r\n<p>Pikiran bawah sadar Anda hanya menerima pengarahan, &ldquo;Gerakkan lengan kanan Anda secara memutar&rdquo; dan melaksanakannya, sama seperti jantung Anda tetap berdenyut dan paru-paru Anda bernapas bahkan sementara Anda tidur. Pikiran sadar Anda memberikan perintah untuk menggerakkan lengan, tetapi pikiran bawah sadar melaksanakannya.</p>\r\n<p>Proses ini terjadi ribuan, bahkan ratusan ribu, kali setiap hari. Setiap kali pikiran sadar Anda menerima sebuah pikiran, pikiran bawah sadar Anda mulai melaksanakannya dan mewujudkannya di dunia di sekitar Anda. Inilah alasan mengapa sangat penting memilih pikiran Anda dengan hati-hati. Apa pun yang disimpan di dalam pikiran sadar langsung melewati pikiran bawah sadar dan mulai menggerakkan tubuh dan kekuatan yang tak terlihat menjadi tindakan.</p>\r\n<p>Pikiran bawah sadar tidak memiliki kemampuan untuk menyensor atau menolak informasi. Ia langsung bertindak atas perintah apa pun yang diberikan padanya. Pikiran bawah sadar tidak dapat mengetahui perbedaan antara sesuatu yang benar-benar terjadi dan sesuatu yang dibayangkan dengan jelas.</p>\r\n<p>Setiap pikiran yang secara terus-menerus Anda tanamkan pada pikiran bawah sadar Anda menjadi tetap dan membentuk kebiasaan. Gagasan dan kebiasaan yang tetap ini menjadi pola pikir Anda. Pola pikir kita berada dalam pikiran bawah sadar. Pola pikir terus mengekspresikan diri dan menggerakkan hasil-hasil kita tanpa bantuan pikiran sadar sampai diganti secara sengaja. Sering kali, kita bahkan tidak menyadari keberadaan mereka, tetapi mereka aktif di dalam pikiran bawah sadar dan mendikte tingkat keberhasilan kita sampai kita dengan sadar menggantinya.</p>\r\n<p>Pikiran bawah sadar dan pikiran sadar seperti kebun dan tukang kebun. Pikiran sadar adalah tukang kebunnya. Anda dapat menggunakannya untuk memilih benih apa, atau pikiran apa, yang ingin Anda tanam. Pikiran bawah sadar akan menanam benih tersebut dan memberikan hasil yang persis mencerminkan jenis pikiran yang Anda tanam. Pikiran apa pun yang Anda terima dan pelihara akan tumbuh dalam kebun dan dilaksanakan oleh pikiran bawah sadar Anda.</p>\r\n<p><strong>Jalan Menuju Hasil</strong></p>\r\n<p>Inilah cara kerjanya. Kita memilih sebuah pikiran dalam pikiran sadar dan menjadi terlibat secara emosional dengan pikiran itu. Pada waktu kita terus memilih pikiran itu dan menanamkannya di dalam pikiran bawah sadar, pikiran bawah sadar mulai menggerakkan tubuh untuk bertindak. Itulah tepatnya apa yang terjadi beberapa menit yang lalu ketika Anda menggerakkan lengan Anda. Anda secara sadar memilih pikiran itu dan merasakan Anda ingin melakukannya. Anda memberikan perintah dan menanamkannya di dalam pikiran bawah sadar Anda, yang mengaktifkan semua otot yang diperlukan untuk menggerakkan lengan Anda. Dengan cara inilah semua hasil tercipta. Pikiran menciptakan perasaan dalam pikiran bawah sadar Anda. Perasaaan menciptakan tindakan, dan tindakan menciptakan hasil.</p>\r\n<p>Ubahlah pemikiran Anda, dan Anda mengubah hasil Anda. Setiap pikiran yang terus-menerus Anda pikirkan akhirnya berakhir dalam bentuk fisik. Jika pikiran Anda berubah, hasil Anda pasti berubah.</p>\r\n<p>PIKIRAN =&gt; PERASAAN =&gt; TINDAKAN =&gt; HASIL</p>\r\n<p><strong>Memilih Pola Pikir Anda Yang Baru</strong></p>\r\n<p>Bagaimana Anda mendapatkan pola pikir yang baru? Bagaimana Anda memilih pikiran baru untuk menggantikan pikiran lama Anda yang membatasi? Berikut ini adalah beberapa petunjuk untuk menciptakan pola pikir Anda yang baru:</p>\r\n<p><strong>1. Buatlah pola pikir Anda senyata, sekonkret, dan sekomprehensif mungkin</strong>.</p>\r\n<p>Itu berarti menuliskannya dengan tepat sebagaimana yang Anda inginkan. Keyakinan baru apa yang ingin Anda jalani? Sikap atau pendapat baru apa yang ingin Anda terapkan? Kebiasaan mental dan pola baru apa yang akan bermanfaat untuk dimasukkan ke dalam hidup Anda? Apa nilai-nilai Anda yang sesungguhnya? Harapan-harapan apa yang akan membawa Anda kepada keberhasilan? Ingin menjadi siapakah Anda? Ketika Anda membaca pola pikir Anda yang baru dan gambar <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> yang Anda inginkan, bagaimana rupa gambar itu? Di mana diri Anda? Bagaimana perasaan Anda? Apa yang Anda lihat? Siapa yang ada di dekat Anda? Akan seperti apakah suatu hari yang Anda jalani jika Anda menjalani hidup dengan sikap, keyakinan, dan pikiran baru itu?</p>\r\n<p>Mulailah dengan menulis, &ldquo;Aku sangat gembira, dan bersyukur sekarang karena&hellip;&rdquo; Kemudian lanjutkan untuk menggambarkan keyakinan, sikap, pendapat, kebiasaan mental, nilai-nilai, dan harapan-harapan Anda tepat seperti yang Anda inginkan.</p>\r\n<p><strong>2. Berpikirlah secara tidak terbatas.</strong></p>\r\n<p>Biarkan diri Anda membayangkan masa depan dan sikap Anda terhadap diri sendiri, orang lain, dan bagaimana dunia bekerja tepat seperti yang Anda inginkan. Jangan sekadar berusaha mendapatkan apa yang Anda pikir dapat Anda peroleh. Wujudkan kehidupan yang benar-benar Anda inginkan!</p>\r\n<p><strong>3. Pastikan untuk menuliskannya dalam kalimat seolah-olah Anda sudah memilikinya. </strong></p>\r\n<p>Anda tidak boleh berpikir dalam bentuk &ldquo;suatu hari,&rdquo; atau menulis &ldquo;Aku akan.&rdquo; Tulislah dan alamilah, seolah-olah hal itu terjadi saat ini, sekalipun hasilnya belum terwujud. Tulislah, misalnya, &ldquo;Aku suka menghasilkan <a href=\"http://www.akuinginsukses.com/kenyataan-tentang-uang-dan-kebahagiaan/\">uang</a> dan menjalankan bisnis yang berhasil, karena hal itu memungkinkan aku bermurah hati kepada orang lain.&rdquo; Berikan pikiran bawah sadar Anda pesan bahwa realitas ini sudah nyata dalam hidup Anda.</p>\r\n<p>Ingatlah, pikiran bawah sadar menerima segala sesuatu yang diberikan kepadanya, tanpa menyunting, menyensor, atau menilai. Jika Anda menuliskan bahwa itu akan terjadi nanti, hal itu memberitahukan pikiran bawah sadar Anda bahwa Anda tidak memiliki apa yang Anda inginkan, dan Anda belum menjadi orang yang Anda inginkan. Ketika Anda mengatakan, &ldquo;Aku akan,&rdquo; Anda sedang mengatakan kepada pikiran bawah sadar Anda bahwa Anda tidak demikian. Saya pernah membaca pernyataan misi sebuah organisasi yang mengatakan mereka &ldquo;berjuang untuk menjadi nomor satu.&rdquo; Terkalah apa yang selalu mereka lakukan. Berjuang! Dengan pernyataan misi itu, mereka selalu berjuang, tetapi tidak pernah menjadi nomor satu! Jika Anda mendapatkan diri Anda tergelincir dan menuliskan dalam bentuk masa mendatang, kembalilah dan bawa gambaran pola pikir Anda ke dalam bentuk saat ini.</p>\r\n<p><strong>4. Buatlah pola pikir Anda bersifat emosional. </strong></p>\r\n<p>Selain menuliskan dalam bentuk sekarang, sertakan kata-kata emosional dan terlibatlah secara emosional dengan apa yang sedang Anda tulis. Ingatlah, perasaan adalah pintu gerbang menuju pikiran bawah sadar, dan pikiran bawah sadar Anda adalah kekuatan yang sesungguhnya di balik keberhasilan Anda. Emosi menciptakan motivasi. Anda harus menjadi bersemangat. Jika Anda tidak bersemangat dengan pola pikir Anda yang baru, jika Anda tidak benar-benar jatuh cinta dengan pola pikir yang baru itu, pola pikir yang baru itu tidak akan terbentuk dalam bentuk fisik. Semangat manusia tidak akan menginvestasikan upayanya untuk sesuatu yang biasa-biasa saja! Jika Anda tidak merasa penuh semangat setelah menuliskan pola pikir Anda yang baru, kembalilah dan kerjakan ulang apa yang telah Anda tuliskan. Ketika hal itu benar-benar menggerakkan Anda, Anda siap membuatnya menjadi kenyataan.</p>\r\n<p><strong>5. Berhati-hatilah agar Anda menyatakan apa yang benar-benar Anda inginkan, bukan apa yang tidak Anda inginkan.</strong></p>\r\n<p>Pikiran kita tidak dapat memproses kata tidak. Jika saya mengatakan pada Anda untuk tidak berpikir tentang es krim, apa yang Anda pikirkan? Terlebih dahulu Anda pasti berpikir tentang apa yang saya katakan untuk tidak Anda pikirkan, sebelum Anda dapat mengatakan pada pikiran Anda untuk tidak berpikir tentang hal itu! Semua pemikiran ini akan membuat Anda menarik hal yang benar-benar tidak Anda inginkan. Jadi ingatlah untuk menyatakan apa yang benar-benar Anda inginkan.</p>\r\n<p><strong>6. Ciptakan sebuah gambar tentang pola pikir Anda dan beradalah dalam gambar itu, bukan sekadar menjadi pengamat yang melihat ke gambar itu.</strong></p>\r\n<p>Rata-rata orang yang melakukan latihan ini, mereka hampir selalu mendapati bahwa mereka melihat diri mereka dalam gambar itu. Itu tidak akan berhasil. Anda harus berada dalam gambar pola pikir Anda yang baru itu. Jika Anda melihat ke diri sendiri dalam gambar itu, Anda mengatakan pada pikiran bawah sadar Anda bahwa itu bukan benar-benar diri Anda, Anda belum benar-benar berada di sana. Ketika Anda benar- benar berada dalam gambar itu, Anda sedang merasakan emosi dan hasil yang telah Anda peroleh dalam hidup baru Anda. Anda mengatakan pada pikiran bawah sadar Anda, &ldquo;Ini nyata!&rdquo; Pikiran bawah sadar Anda segera mulai menciptakan realitas itu. Lihatlah apa yang Anda lihat jika Anda berada dalam gambar itu, bukan melihat ke diri Anda sendiri dalam gambar itu.</p>\r\n<p>Ketika Anda mulai menjalani kehidupan berdasarkan pola pikir Anda yang baru, Anda mulai mengambil keputusan yang berbeda. Anda mungkin mulai berhubungan dengan berbagai jenis orang, dan Anda menarik lingkungan yang berbeda ke dalam hidup Anda. Semakin sering dan bersemangat Anda memasukkan pola pikir Anda ke dalam pikiran Anda, semakin cepat pola pikir itu akan bermanifestasi.</p>\r\n<p>Tips ini efektif apakah Anda sedang membuat pola pikir yang baru atau visi yang baru, semoga bermanfaat!</p>', '2016-04-09 19:27:04', 'file_1460204824.jpg', NULL, 'admin', 6);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `pesan` varchar(1000) DEFAULT '''''',
  `wisata_id` int(11) NOT NULL,
  `created_by` varchar(1000) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `pesan`, `wisata_id`, `created_by`, `date_created`) VALUES
(8, 'tesd', 5, 'admin', '2019-06-29 10:39:19'),
(9, 'asdas', 5, 'admin', '2019-06-29 10:49:06'),
(10, 'bagooos', 5, 'asev_setiawam', '2019-06-29 10:55:20'),
(11, 'awee awee', 6, 'admin', '2019-06-29 11:06:44'),
(12, 'yoi menf', 6, 'admin', '2019-06-29 11:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(1000) NOT NULL,
  `deskripsi` varchar(1000) DEFAULT NULL,
  `wisata_id` bigint(20) NOT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `created_by` varchar(225) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `deskripsi`, `wisata_id`, `photo`, `created_by`, `date_created`) VALUES
(6, 'Nasi kebuli ', '<p>Nasi Kebuli</p>\r\n', 5, '8ac5e48980e5687db583b94b2c0b1235.jpg', 'admin', '2019-06-30 09:19:16'),
(7, 'Nasi Kebuli', '<p>NAsi kebuli</p>\r\n', 6, 'dc2b0d7d7ff030fb4eef3fd2048abeb6.jpg', 'admin', '2019-06-30 09:21:38'),
(8, 'Madu mongso', '<p>Makanan Khas Madiun</p>\r\n', 5, 'dccc878d99d7905ede52f24ce2c8265d.jpg', 'admin', '2019-06-30 09:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `mlike`
--

CREATE TABLE `mlike` (
  `id` bigint(20) NOT NULL,
  `wisata_id` int(11) NOT NULL,
  `created_by` varchar(1000) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mlike`
--

INSERT INTO `mlike` (`id`, `wisata_id`, `created_by`, `date_created`, `status`) VALUES
(4, 6, 'admin', '2019-06-29 12:08:33', b'1'),
(5, 6, 'asev_setiawam', '2019-06-29 12:10:22', b'1'),
(6, 5, 'admin', '2019-06-29 23:30:44', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `promo_schedule`
--

CREATE TABLE `promo_schedule` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_schedule`
--

INSERT INTO `promo_schedule` (`id`, `nama`, `date_start`, `date_end`, `created_by`, `date_created`) VALUES
(3, 'tes Promo', '2019-08-01 10:54:52', '2019-10-31 10:54:52', 'admin', '2019-08-21 10:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `promo_schedule_detail`
--

CREATE TABLE `promo_schedule_detail` (
  `id` int(11) NOT NULL,
  `wisata_id` int(11) NOT NULL,
  `wisata_user` varchar(225) NOT NULL,
  `promo_schedule_id` int(11) NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_schedule_detail`
--

INSERT INTO `promo_schedule_detail` (`id`, `wisata_id`, `wisata_user`, `promo_schedule_id`, `created_by`, `date_created`) VALUES
(2, 6, 'asev_setiawam', 3, 'admin', '2019-08-01 15:28:21'),
(3, 5, 'admin', 3, 'admin', '2019-08-25 16:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-20 20:44:12', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 00:28:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 16:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 10:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-12 22:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-12 22:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-12 22:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-12 23:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-12 23:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 00:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 00:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 13:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 11:06:52', '::1', 'Chrome'),
(25, '2017-02-04 11:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 11:08:31', '::1', 'Chrome'),
(27, '2017-02-05 12:33:14', '::1', 'Chrome'),
(28, '2017-02-05 13:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 11:21:08', '::1', 'Chrome'),
(30, '2017-02-08 18:07:51', '::1', 'Chrome'),
(31, '2017-02-10 13:12:05', '::1', 'Chrome'),
(32, '2017-02-20 13:46:21', '::1', 'Chrome'),
(33, '2017-02-21 21:04:16', '::1', 'Chrome'),
(34, '2017-02-27 11:47:25', '::1', 'Chrome'),
(35, '2017-03-01 23:09:25', '::1', 'Chrome'),
(36, '2017-03-04 01:18:51', '::1', 'Chrome'),
(37, '2017-03-12 13:40:32', '::1', 'Chrome'),
(38, '2017-03-13 13:34:32', '::1', 'Chrome'),
(39, '2017-03-22 21:08:15', '::1', 'Firefox'),
(40, '2017-03-25 02:39:02', '::1', 'Firefox'),
(41, '2017-03-25 03:16:45', '::1', 'Firefox'),
(42, '2017-03-28 07:11:23', '::1', 'Firefox'),
(43, '2017-03-29 15:39:17', '::1', 'Firefox'),
(44, '2017-03-30 03:52:11', '::1', 'Firefox'),
(45, '2017-03-31 15:48:46', '::1', 'Firefox'),
(46, '2017-04-06 15:33:58', '::1', 'Firefox'),
(47, '2017-04-07 17:25:37', '::1', 'Firefox'),
(48, '2017-04-08 03:00:14', '::1', 'Firefox'),
(49, '2017-04-09 03:06:03', '::1', 'Firefox'),
(50, '2017-04-10 05:20:50', '::1', 'Firefox'),
(51, '2017-04-11 04:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 04:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 05:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 05:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 05:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 05:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 06:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 06:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 06:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 06:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 06:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 06:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 06:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 06:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 06:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 06:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 06:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 06:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 06:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 06:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 06:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 06:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 06:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 06:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 06:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 06:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 06:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 06:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 06:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 06:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 06:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 06:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 06:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 06:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 07:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 07:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 07:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 07:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 07:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 07:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 07:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 07:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 07:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 07:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 07:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 07:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 07:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 07:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 07:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 07:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 07:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 07:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 07:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 07:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 07:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 07:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 08:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 08:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 08:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 08:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 08:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 08:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 08:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 08:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 08:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 08:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 08:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 08:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 08:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 08:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 08:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 08:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 08:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 08:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 08:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 08:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 08:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 08:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 08:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 08:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 08:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 08:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 08:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 08:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 08:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 08:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 08:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 08:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 08:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 08:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 08:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 08:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 08:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 08:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 08:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 08:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 08:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 08:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 08:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 08:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 08:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 08:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 08:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 08:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 08:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 08:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 08:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 08:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 08:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 08:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 08:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 08:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 08:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 08:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 08:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 08:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 08:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 08:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 08:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 08:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 08:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 08:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 08:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 08:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 08:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 08:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 08:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 08:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 08:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 08:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 08:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 08:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 08:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 08:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 08:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 08:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 08:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 08:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 08:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 08:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 08:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 08:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 08:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 08:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 08:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 08:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 08:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 08:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 08:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 08:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 08:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 08:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 08:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 08:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 08:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 08:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 08:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 08:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 08:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 09:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 09:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 09:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 09:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 09:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 09:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 09:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 09:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 09:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 09:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 09:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 09:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 09:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 09:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 09:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 09:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 09:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 09:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 09:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 09:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 09:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 09:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 09:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 09:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 09:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 09:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 09:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 09:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 09:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 09:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 09:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 09:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 09:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 09:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 09:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 09:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 09:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 09:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 09:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 09:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 09:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 09:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 09:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 09:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 09:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 09:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 09:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 09:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 09:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 09:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 09:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 09:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 09:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 09:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 09:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 09:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 09:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 09:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 09:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 09:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 09:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 09:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 09:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 09:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 09:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 09:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 09:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 09:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 09:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 09:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 09:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 09:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 09:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 09:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 09:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 09:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 09:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 09:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 09:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 09:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 09:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 09:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 09:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 09:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 09:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 09:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 09:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 09:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 09:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 09:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 09:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 09:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 09:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 09:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 09:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 09:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 09:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 09:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 09:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 09:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 09:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 09:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 09:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 09:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 09:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 09:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 09:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 09:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 09:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 09:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 09:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 09:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 09:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 09:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 09:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 09:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 09:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 09:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 09:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 09:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 09:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 09:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 09:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 09:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 09:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 09:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 09:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 09:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 09:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 09:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 09:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 09:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 09:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 09:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 09:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 09:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 09:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 09:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 09:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 09:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 09:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 09:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 09:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 09:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 09:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 09:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 09:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 09:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 10:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 10:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 10:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 10:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 10:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 10:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 10:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 10:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 10:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 10:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 10:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 10:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 10:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 10:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 10:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 10:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 10:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 10:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 10:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 10:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 10:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 10:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 10:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 10:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 10:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 10:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 10:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 10:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 10:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 10:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 10:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 10:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 10:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 10:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 10:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 10:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 10:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 10:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 10:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 10:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 10:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 10:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 10:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 10:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 10:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 10:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 10:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 10:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 10:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 10:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 10:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 10:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 10:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 10:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 10:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 10:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 10:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 10:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 10:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 10:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 10:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 10:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 10:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 10:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 10:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 10:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 10:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 10:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 10:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 10:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 10:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 10:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 10:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 10:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 10:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 10:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 10:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 10:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 10:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 10:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 10:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 10:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 10:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 11:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 11:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 11:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 11:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 11:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 11:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 11:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 11:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 11:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 11:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 11:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 11:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 11:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 11:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 11:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 11:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 11:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 11:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 11:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 11:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 11:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 11:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 11:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 11:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 11:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 11:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 11:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 11:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 11:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 11:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 11:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 11:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 11:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 11:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 11:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 11:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 11:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 11:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 11:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 11:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 11:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 11:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 11:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 11:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 11:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 11:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 11:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 11:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 11:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 11:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 11:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 11:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 11:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 11:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 11:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 11:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 11:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 11:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 11:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 11:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 11:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 11:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 11:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 11:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 11:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 11:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 11:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 11:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 11:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 11:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 11:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 11:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 11:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 11:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 11:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 11:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 11:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 11:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 11:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 11:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 11:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 11:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 11:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 11:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 11:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 11:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 11:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 11:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 11:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 11:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 11:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 11:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 11:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 11:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 11:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 11:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 11:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 11:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 11:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 11:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 11:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 11:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 11:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 11:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 11:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 11:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 11:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 11:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 11:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 11:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 12:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 12:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 12:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 12:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 12:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 12:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 12:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 12:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 12:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 12:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 12:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 12:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 12:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 12:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 12:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 12:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 12:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 12:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 12:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 12:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 12:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 12:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 12:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 12:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 12:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 12:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 12:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 12:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 12:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 12:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 12:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 12:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 12:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 12:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 12:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 12:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 12:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 12:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 12:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 12:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 12:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 12:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 12:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 12:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 12:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 12:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 12:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 12:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 12:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 12:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 12:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 12:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 12:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 12:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 12:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 12:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 12:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 12:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 12:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 12:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 12:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 12:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 12:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 12:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 12:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 12:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 12:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 12:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 12:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 12:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 12:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 12:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 12:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 12:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 12:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 12:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 12:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 12:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 12:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 12:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 12:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 12:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 12:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 12:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 13:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 13:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 13:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 13:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 13:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 13:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 13:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 13:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 13:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 13:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 13:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 13:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 13:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 13:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 13:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 13:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 13:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 13:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 13:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 13:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 13:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 13:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 13:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 13:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 13:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 13:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 13:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 13:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 13:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 13:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 13:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 13:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 13:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 13:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 13:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 13:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 13:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 13:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 13:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 13:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 13:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 13:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 13:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 13:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 13:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 13:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 13:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 13:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 13:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 13:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 13:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 13:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 13:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 13:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 13:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 13:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 13:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 13:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 13:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 13:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 13:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 13:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 13:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 13:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 13:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 13:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 13:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 13:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 13:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 13:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 13:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 13:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 13:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 13:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 13:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 13:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 13:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 13:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 13:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 13:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 13:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 13:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 13:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 13:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 13:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 13:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 14:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 14:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 14:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 14:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 14:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 14:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 14:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 14:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 14:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 14:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 14:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 14:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 14:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 14:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 14:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 14:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 14:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 14:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 14:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 14:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 14:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 14:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 14:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 14:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 14:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 14:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 14:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 14:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 14:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 14:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 14:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 14:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 14:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 14:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 14:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 14:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 14:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 14:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 14:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 14:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 14:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 14:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 14:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 14:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 14:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 14:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 14:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 14:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 14:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 14:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 14:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 14:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 14:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 14:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 14:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 14:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 14:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 14:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 14:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 14:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 14:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 14:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 14:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 14:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 14:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 14:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 14:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 14:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 14:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 14:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 14:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 14:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 14:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 14:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 15:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 15:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 15:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 15:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 15:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 15:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 15:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 15:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 15:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 15:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 15:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 15:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 15:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 15:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 15:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 15:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 15:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 15:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 15:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 15:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 15:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 15:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 15:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 15:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 15:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 15:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 15:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 15:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 15:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 15:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 15:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 15:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 15:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 15:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 15:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 15:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 15:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 15:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 15:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 15:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 15:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 15:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 15:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 15:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 15:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 15:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 15:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 15:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 15:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 15:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 15:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 15:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 15:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 15:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 15:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 15:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 15:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 15:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 15:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 15:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 16:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 16:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 16:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 16:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 16:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 16:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 16:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 16:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 16:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 16:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 16:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 16:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 16:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 16:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 16:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 16:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 16:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 16:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 16:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 16:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 16:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 16:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 16:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 16:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 16:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 16:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 16:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 16:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 16:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 16:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 16:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 16:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 16:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 16:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 16:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 16:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 16:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 16:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 16:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 16:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 16:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 16:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 16:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 16:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 16:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 16:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 16:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 16:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 16:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 16:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 16:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 16:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-07-10 02:07:19', '::1', 'Firefox'),
(908, '2019-05-24 00:48:35', '::1', 'Chrome'),
(909, '2019-06-13 13:05:12', '::1', 'Chrome'),
(910, '2019-06-17 00:35:45', '::1', 'Chrome'),
(911, '2019-06-18 09:39:22', '::1', 'Chrome'),
(912, '2019-06-18 09:42:19', '192.168.0.104', 'Chrome'),
(913, '2019-06-23 02:56:13', '::1', 'Chrome'),
(914, '2019-06-28 02:07:13', '::1', 'Chrome'),
(915, '2019-06-29 03:00:23', '::1', 'Chrome'),
(916, '2019-06-30 02:03:25', '::1', 'Chrome'),
(917, '2019-07-01 09:47:56', '::1', 'Chrome'),
(918, '2019-08-20 00:35:22', '::1', 'Chrome'),
(919, '2019-08-21 01:21:16', '::1', 'Chrome'),
(920, '2019-08-23 01:38:42', '::1', 'Chrome'),
(921, '2019-08-24 05:24:17', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `alamat` varchar(1000) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`, `alamat`, `status`) VALUES
(2, 'Admin', 'admin', '8e70f53f479f1e598caa6e8775345726', '1', '6da35fec2446d89215236e6f386541db.png', NULL, b'0'),
(8, 'asep', 'asev_setiawam', 'e10adc3949ba59abbe56e057f20f883e', '3', 'e2c3a65f5fbd7b2f658b634c0d4c9f98.jpg', 'tes', b'0'),
(9, 'asep', 'asevsetiawan88@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3', 'a1550a23c310a1420e9b45522e9b9409.png', 'tes', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `idwisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`idwisata`, `nama_wisata`, `deskripsi`, `gambar`, `date_created`, `created_by`) VALUES
(5, 'Pulau Harapan', '<p>Sebagian orang mungkin belum pernah mendengar, apalagi mengunjungi&nbsp;<strong>Pulau Pamutusan</strong>&nbsp;di Sumatera Barat. Tapi, bagi yang pernah berkunjung ke pulau yang ada di Sumatera Barat itu, bisa jadi sudah merencanakan untuk kembali ke sana.<br />\r\n<br />\r\nMemang, Sumatera Barat terkenal dengan kawasan yang dikelilingi ratusan pulau kecil yang dihiasi tekstur perbukitan dan biota laut yang mengagumkan. Salah satunya&nbsp;<strong>Pulau Pamutusan</strong>.<br />\r\n<br />\r\nTerletak di kawasan Bungus Teluk Kabung, Padang atau sekitar satu jam perjalanan dari Kota Padang, pulau ini dikenal dengan surga tersembunyi yang belum banyak terjamah wisatawan.<br />\r\n<br />\r\n<strong>Pulau Pamutusan</strong>&nbsp;bisa ditempuh dengan menggunakan kapal kecil dari Pelabuhan Muara Kota Padang sekitar satu jam perjalanan laut. Pulau dengan luas 8 hektare ini memiliki pasir putih serta tumbuhan pohon kelapa dan tanaman mangrove serta perbukitan yang masih hijau.<br />\r\n<br />\r\nPulau ini diberi nama Pamutusan karena terdapat semenanjung yang berubah menjadi daratan berpasir putih ketika air laut surut.<br />\r\n<br />\r\nUntuk menjaga kebersihan pulau tersebut, dipungut retribusi untuk setiap tamu yang datang oleh seorang penjaga pulau yang sehari-hari menetap di sana.<br />\r\n&nbsp;<br />\r\nPulau ini ibarat sepotong surga yang tersembunyi di tengah Samudera Hindia yang belum banyak dijamah oleh wisatawan karena belum pernah terekspose. Pulau ini cocok bagi wisatawan penggemar landscape atau fotografer karena banyak terdapat spot-spot cantik dengan hamparan pemandangan nan asri dan indah, walaupun ditempuh dengan sedikit tracking untuk mencapai puncak bukitnya.<br />\r\n<br />\r\nSelain itu, biota ikan hias dan terumbu karang yang terdapat di dalam laut di sekitar pulau ini juga menjadi daya tarik tersendiri bagi penggemar snorkling. Nah, untuk melepas kepenatan setelah berwisata, terdapat sebuah cottage yang bisa disinggahi dan bersantai menikmati pemandangan alam pulau-pulau kecil yang menghampar di depannya.</p>\r\n', 'f8e61ef64cd3dec2e8a266bdcb9eb7f5.jpg', '2019-06-28 15:54:29', 'admin'),
(6, 'Pulau Bidadari', '<p>Tah eta&nbsp;</p>\r\n', 'f87936855da139a96fb6e4e95c85ffe5.jpg', '2019-06-29 10:55:08', 'asev_setiawam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `adminid` (`user`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wisata_fk` (`wisata_id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlike`
--
ALTER TABLE `mlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_schedule`
--
ALTER TABLE `promo_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_schedule_detail`
--
ALTER TABLE `promo_schedule_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_promo_schedule_id` (`promo_schedule_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`idwisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mlike`
--
ALTER TABLE `mlike`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promo_schedule`
--
ALTER TABLE `promo_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo_schedule_detail`
--
ALTER TABLE `promo_schedule_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `idwisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `wisata_fk` FOREIGN KEY (`wisata_id`) REFERENCES `wisata` (`idwisata`);

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Constraints for table `promo_schedule_detail`
--
ALTER TABLE `promo_schedule_detail`
  ADD CONSTRAINT `fk_promo_schedule_id` FOREIGN KEY (`promo_schedule_id`) REFERENCES `promo_schedule` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
