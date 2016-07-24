-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2016 at 06:38 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foto`
--

CREATE TABLE IF NOT EXISTS `tbl_foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  `id_ukm` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_foto`
--

INSERT INTO `tbl_foto` (`id`, `gambar`, `id_ukm`) VALUES
(1, '1469370227WP_20160424_007.jpg', 'U0007'),
(2, '1469370227WP_20160424_008.jpg', 'U0007'),
(3, '1469370599jws_-_belakang.jpg', 'U0008'),
(4, '1469370599jws_-_depan.jpg', 'U0008'),
(5, '1469370599tnf_-_balik.jpg', 'U0008');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `news_heading` varchar(500) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `news_status` int(11) NOT NULL DEFAULT '1',
  `news_date` varchar(255) NOT NULL,
  `news_image` text NOT NULL,
  `news_description` text NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`nid`, `news_heading`, `cat_id`, `news_status`, `news_date`, `news_image`, `news_description`) VALUES
(22, 'Apa manfaat mengikuti pameran atau bazaar', 5, 1, '07-25-2016', '4051-2016-07-24.jpg', '<p>Bagi anda yang sudah memiliki usaha/bisnis yang menghasilan produk baru atau bahkan bisnis anda masih berumur jagung ada baiknya untuk sering-sering mengikuti pameran ataupun bazaar karena sangat berguna untuk kelanjutan bisnis yang anda bangun.</p>\r\n\r\n<p>Pameran bisnis di pusat keramaian menjadi ajang promosi yang efektif. Pasalnya, event pameran bisnis acap kali ramai dipadati pengunjung, baik yang sekadar melihat-lihat atau memang ingin mencari suatu produk. Apalagi di akhir pekan seperti hari Sabtu dan Minggu, biasanya pengunjung tambah ramai berjejalan.</p>\r\n\r\n<p><a href="http://artikel.co/wp-content/uploads/2015/08/bazaar.jpg"><img alt="bazaar" src="http://artikel.co/wp-content/uploads/2015/08/bazaar-300x169.jpg" style="height:217px; width:385px" /></a>Mengutip dari Small Bussiness Admisnistration (SBA) Amerika Serikat, ada beberapa manfaat mengikuti pameran sebagai peserta, antara lain:</p>\r\n\r\n<p><strong>1. Mendapatkan Calon Pembeli (Sales Leads)</strong><br />\r\nMelalui pameran ini, Anda (pemilik usaha) bisa mengenalkan produk Anda kepada pengunjung pameran. Meski pameran hanya berlangsung beberapa hari saja, peluang melebarkan sayap bisnis terbuka lebar. Kemungkinan tindak lanjut seperti pertambahan jumlah pelanggan baru serta order yang otomatis bertambah amat mungkin terjadi. Hal ini bisa berdampak sangat besar terutama jika Anda memiliki produk atau merek yang baru dan belum banyak dikenal oleh masyarakat.</p>\r\n\r\n<p><strong>2. Menghasilkan Transaksi Selama Pameran</strong><br />\r\nSelama pameran berlangsung, Anda bisa mengoptimalkan jumlah transaksi penjualan dengan berbagai cara. Misalnya dengan memberikan diskon, kupon hadiah, hingga bonus menarik lainnya. Sebagai contoh, Sarah Beekmans, produsen aksesoris untuk wanita bisa menghasilkan penjualan hingga Rp.40 juta dalam satu hari pameran berlangsung.</p>\r\n\r\n<p><strong>3. Meningkatkan Image dan Visibilitas</strong><br />\r\nNamanya juga pameran, ajang memamerkan produk usaha Anda. Di ajang ini, produk Anda dilihat oleh ribuan pasang mata pengunjung pameran tersebut. Ini kesempatan emas untuk mem-branding image produk usaha Anda. Dengan begitu, awareness di benak pengunjung akan mudah tertanam. Visual adalah aspek penting untuk diperhatikan.</p>\r\n\r\n<p><strong>4. Membidik Audiens Khusus</strong><br />\r\nSaat ini, pameran atau bazar semakin memiliki tema yang khusus. Pameran tematik seperti otomotif, kerajinan, hingga mainan dan komik, semakin rutin diadakan setiap tahun. Disini Anda bisa &ldquo;numpang riset&rdquo; audiens yang datang. Misalnya pameran yang berbau hobi atau mainan, tentunya yang datang akan kebanyakan keluarga, atau laki-laki dewasa yang mengkoleksi mainan. Disini jika misalnya Anda menjual makanan, Anda bisa langsung menilai apakah audiens yang datang akan cocok untuk produk Anda tau tidak. Demikian juga jika Anda menjual kaos, apakah kaos Anda akan cocok dengan tema pameran? Walaupun produk yang Anda jual tidak sesuai dengan tema acara, namun Anda bisa saja audiens yang datang ke acara tersebut cocok dengan target pasar Anda. Apalagi jika memang produk Anda &ldquo;nyambung&rdquo; dengan tema utama pameran, tentunya lebih bagus lagi.</p>\r\n\r\n<p><strong>5. Memperbaiki Efektifitas dan Efisiensi Berbagai Upaya Marketing</strong><br />\r\nSudah baguskah merek Anda? Sudah menarik kah desain logo Anda? Bagaimana dengan warna yang Anda gunakan? Apakah semua itu sudah menarik target pasar yang tepat? Saat sedang mengikuti pameran, Anda ibarat menebar jala di laut. Siapa yang datang ke stan Anda adalah ikan yang terjaring. Ini juga sekaligus survey langsung sejauh mana efeketifitas dan efisiensi strategi marketing bisnis Anda selama ini. Jika sudah ketemu bagian mana yang perlu diperbaiki, segera berinovasi dengan strategi yang baru.</p>\r\n\r\n<p><strong>6. Menambah Jejaring</strong><br />\r\nPameran besar yang sudah tersohor bak magnet yang mengundang semua pihak yang terkait dengan insustri itu, mulai dari pemasok, pinsipal, distributor, investor, lembaga riset, media, dan tentu saja pelanggan. Ini peluang untuk memperluas kemitraan, siapa tahu bisa bekerjasama di masa mendatang. Event merupakan media marketing yang amat kuat. Karenanya pameran juga cocok walaupun merek Anda sudah cukup lama, siapa tahu bisa menjaring mitra untuk membuka cabang baru usaha Anda.</p>\r\n\r\n<p><strong>7. Mengenal Potensi Pesaing</strong><br />\r\nPameran biasanya diikuti banyak pelaku usaha. Berarti, tidak hanya Anda saja, tapi juga pelaku usaha sejenis yang notabene pesaing Anda. Melalui pameran ini, Anda bisa sekaligus menjaring informasi tentang pesaing, seperti harga produk, produk unggulan, peralatan yang digunakan. Atau sekadar mengetahui sejauh mana perkembangan bisnis mereka.</p>\r\n\r\n<p><strong>8. Kemungkinan Efek Viral</strong><br />\r\nPameran juga sering dijadikan ajang untuk membuat merek Anda menjadi viral atau menyebar dengan cepat di social media dan dibicarakan banyak orang. Contohnya, Anda bisa membuat background yang unik agar pengunjung Anda bisa berfoto dan meng-upload nya ke Instagram, atau membuat promosi khusus yang meng-upload foto ke Instagram akan mendapat diskon, atau banyak lagi. Gunakan imajinasi Anda, manfaatkan momentumnya.</p>\r\n\r\n<p><strong>9. Belajar Dari Pembeli Anda Secara Langsung</strong><br />\r\nUntuk saya pribadi, pameran adalah salah satu cara terbaik untuk mem-validasi ide bisnis atau produk yang saya jual. Disinilah saatnya kita bisa ngobrol langsung dengan pembeli atau pengunjung yang tertarik. Disini kita akan belajar kenapa orang tidak jadi membeli? Kenapa mereka membeli merek kompetitor? Apa pendapat pembeli mengenai produk kita? Dimana kurangnya? Dan banyak pertanyaan lain akan terjawab saat berbicara langsung dengan pembeli dalam pameran, baik seacara langsung maupun tidak.</p>\r\n\r\n<p>Memang, seringkali biaya keikutsertaan di pameran tidak murah. Tapi, kalau melihat peluang bisnis yang bisa diraih setelah mengikuti pameran, sepertinya cara ini layak dicoba, terutama bagi Anda yang baru mulai membuka usaha.</p>\r\n'),
(21, 'Bagaimana Menjual Produk Anda ?', 5, 1, '07-25-2016', '9313-2016-07-24.jpg', '<p><strong>Strategi penjualan produk</strong></p>\r\n\r\n<p>Sebagai pengusaha atau pebisnis tentu impian terbesar dalam usahanya adalah produknya dikenal luas dan dapat dijual di toko-toko atau area pemasaran yang besar, akan tetapi tidak mudah menarik perhatian para buyers agar tertarik dengan produk kita, Lalu bagaimana produk kita dapat menonjol dan membuat calon pembeli tertarik untuk mengenal produk kita.</p>\r\n\r\n<p>Berikut adalah strategi penjualan yang dapat menarik perhatian calon pembeli :</p>\r\n\r\n<ol>\r\n	<li><strong>Kemasan Produk</strong></li>\r\n</ol>\r\n\r\n<p>Buat kemasan produk yang menarik dengan nama dan gambar yang jelas yang mudah dilihat, desain gambar dalam kemasan mampu mewakili atau menjelaskan produk anda, agar dapat memberikan kesan pertama yang menarik.</p>\r\n\r\n<ol>\r\n	<li><strong>Product Knowledge</strong></li>\r\n</ol>\r\n\r\n<p>Pengetahuan tentang produk, penjelasan tentang produk yang anda jual. Bagaimana cara kerja produk anda, cara penggunaan, bisa di isi dengan bahan-bahan yang digunakan atau takaran penyajian,secara singkat jelas dan mudah dipahami</p>\r\n\r\n<ol>\r\n	<li><strong>Apa yang produk anda berikan ?</strong></li>\r\n</ol>\r\n\r\n<p>Jelaskan kenapa produk anda dibutuhkan, apa yang produk anda berikan ? Berikan informasi&nbsp; yang singkat dan jelas, dan bagaimana cara mendapatkan produk anda.</p>\r\n\r\n<ol>\r\n	<li><strong>Solusi</strong></li>\r\n</ol>\r\n\r\n<p>Solusi apa yang dapat produk anda berikan untuk calon pembeli yang akan membeli produk anda?, Apakah produk anda dapat mengatasi masalah yang dihadapi calon pembeli , Selain itu solusi apabila ada complain pelanggan terhadap produk anda, sarana apa yang dapat digunakan pembeli untuk menyampaikan saran atau kritik mereka setelah menggunakan atau membeli produk anda.</p>\r\n\r\n<p>Bagaiman kita dapat memberikan solusi secara maksimal tetapi tetap dalam jalur yang wajar. Oleh karena itu, berikan informasi yang real dan akurat agar dapat sesuai dengan kebutuhan calon pembeli.</p>\r\n\r\n<ol>\r\n	<li><strong>Cara Kerja</strong></li>\r\n</ol>\r\n\r\n<p>Buatlah ilustrasi produk anda, atau pasang beberapa review tentang&nbsp; produk anda agar calon pembeli dapat&nbsp; mengetahui pendapat-pendapat tentang produk anda, penjelasan tentang produk secara singkat dan jelas agar tidak bertele-tele, karena hal tersebut justru membuat bosan dan calon pembeli enggan membacanya .</p>\r\n\r\n<p>Hal ini dapat juga berisi tentang, cara pengiriman barang atau bagaimana calon pembeli mendapatkan produk kita apabila dijual secara online.</p>\r\n\r\n<ol>\r\n	<li><strong>Kepercayaan</strong></li>\r\n</ol>\r\n\r\n<p>Dibutuhkan kerja keras dan kesabaran dalam membangun kepercayaan pelanggan, karena kita menghadapi banyak tipe pelanggan, bagaimana kita dapat memberikan pertimbangan dan alternative yang dapat mengatasi solusi para calon pembeli atau pun para pelanggan dengan catatan sesuai dengan produk dan apa yang dibutuhkan pelanggan. Testimoni pelanggan, review produk dan terutama bagaimana produk kita dapat diandalkan.</p>\r\n'),
(20, 'Kiat Memulai Usaha Kecil di Rumah', 5, 1, '07-24-2016', '0020-2016-07-24.jpg', '<p>Di zaman yang semakin maju, masyarakat semakin merasakan tentang susahnya mencari pekerjaan. Terutama untuk orang yang tidak mampu dan memiliki pendidikan yang tinggi. Modal yang besar dan usaha apa yang akan dilakukan menjadi hal pertama yang dipikirkan oleh para calon pengusaha. Namun tidak semua bisnis harus bermodalkan uang yang besar. Hal ini dikarenakan terdapat pula usaha kecil di rumah yang dapat dikembangkan. Yang terpenting adalah melakukan usaha ini dengan sungguh-sungguh dan telaten dalam membangunnya.</p>\r\n\r\n<p><strong>Hal penting dalam membuka usaha</strong></p>\r\n\r\n<p>Syarat utama sebelum memulai usaha kecil ini yang dapat dilakukan di rumah terutama oleh wanita Indonesia antara lain yaitu:</p>\r\n\r\n<ol>\r\n	<li>Memantapkan diri terlebih dahulu. Maksudnya adalah yakin dan mantap untuk memulai dan mengembangkan usaha dengan sebaik-baiknya walaupun dengan modal yang kecil.</li>\r\n	<li>Mempersiapkan diri. Maksudnya adalah akan terus membangun usaha yang dirintis walaupun tidak menutup kemungkinan akan ada saat dimana usaha tersebut mengalami masa-masa yang sulit.</li>\r\n	<li>Positive thinking. Yakin bahwa usaha yang dipilih dapat berjalan dan berkembang dengan baik.</li>\r\n	<li>Tanamkan untuk dapat membagi waktu dengan baik. Maksudnya dapat membedakan waktu yang dipakai untuk usaha dan waktu yang dipakai untuk kebutuhan pribadi.</li>\r\n</ol>\r\n\r\n<p>Setelah meyakinkan diri mengenai 2 hal yang sudah disebutkan di atas, berikut hal yang harus diperhatikan dalam menentukan jenis usaha yang akan dirintis:</p>\r\n\r\n<ul>\r\n	<li>Melihat prospek jenis usaha yang menjanjikan.</li>\r\n	<li>Melakukan survey untuk melihat perbandingan antara pasar dengan benda atau hasil produk yang akan dikerjakan.</li>\r\n	<li>Menyesuaikan dengan modal yang ada.</li>\r\n	<li>Sebaiknya mengambil usaha yang sesuai dengan kesenangan. Misalnya menjadikan hobi sebagai usaha.</li>\r\n</ul>\r\n\r\n<p><strong>Industri dengan prospek tinggi untuk usaha kecil</strong></p>\r\n\r\n<p>Usaha kecil di rumah yang memiliki prospek tinggi adalah usaha tentang kuliner dan pakaian dikarenakan industri-industri tersebut merupakan industri yang berjalan untuk memenuhi kebutuhan pokok seseorang setiap harinya yaitu sandang dan pangan. Walaupun dua bidang tersebut memiliki prospek yang tinggi dan menjanjikan namun hal yang harus diwaspadai ketika memilih usaha ini adalah saingan yang banyak. Hal ini bisa dilihat di lingkungan sekitar yang begitu banyak warung makan atau sekedar warung minuman yang menjual beraneka macam jus dan jenis minuman yang lainnya.</p>\r\n\r\n<p>Usaha di industri pakaian merupakan bidang dengan prospek tertinggi kedua setelah kuliner. Begitu banyak orang yang memilih untuk berkelut dengan usaha di bidang ini. Alasannya bermacam-macam misalnya ingin membuat sesuatu yang baru. Masalah yang pertama yang harus diselesaikan sama dengan usaha di industri pakaian yaitu banyaknya saingan yang mengeluarkan produk yang hampir sama antara satu dengan yang lainnya. Solusinya adalah jika Anda tetap menginginkan untuk menjalankan bisnis atau usaha di bidang ini, sebaiknya Anda mencari atau menemukan teknik atau hasil produksi yang baru sesuai dengan kreatifitas untuk dapat menarik konsumen sehingga usaha Anda tidak akan berhenti di tengah jalan.</p>\r\n\r\n<p><strong>Contoh usaha kecil di rumah yang dapat dilakukan antara lain:</strong></p>\r\n\r\n<ol>\r\n	<li>Membuka toko atau warung sendiri di rumah misalnya toko kelontong, warung sayur, toko alat tulis, toko elektronik.</li>\r\n	<li>Menjual gorengan atau makanan lain yang dapat dijual sendiri di rumah ataupun dititipkan di warung tetangga.</li>\r\n	<li>Menjual hasil kerajinan tangan misalnya dengan menjual syal atau menjual anyaman atau tembikar.</li>\r\n	<li>Membuka les private atau bimbingan belajar untuk anak-anak di sekitar rumah.</li>\r\n	<li>Menjual hasil produksi dari orang lain. Dengan kata lain yaitu menjadi reseller.</li>\r\n	<li>Mendaur ulang barang yang ada menjadi suatu produk baru yang layak pakai dan jual dengan harga yang terjangkau.</li>\r\n</ol>\r\n\r\n<p>Untuk menghemat biaya yang harus dikeluarkan oleh para pelaku bisnis, ada baiknya meminta bantuan kepada anggota keluarga yang lain. Hal ini dikarenakan selain menghemat biaya untuk membayar karyawan, Anda dapat membangun usaha kecil bersama dengan keluarga. Jika sudah berkembang, Anda dapat menambah jumlah karyawan untuk membantu dalam menyelesaikan produksi atau aktivitas lain dalam bisnis yang dikelola. Anda dapat menggunakan media untuk membangun dan mengembangkan usaha. Misalnya dengan selebaran atau brosur, lewat aplikasi smartphone yang marak dilakukan, lewat media sosial seperti twitter, facebook, path, atau dengan menggunakan forum bisnis online yang menjadi tempat para pelaku bisnis online untuk menggelar &lsquo;lapak&rsquo; dan memperkenalkan bisnisnya secara lebih jauh.</p>\r\n\r\n<p>Menggunakan internet sebagai salah satu sarana untuk usaha kecil juga dapat Anda gunakan. Jika belum mampu untuk membeli domain dan hosting untuk membuat situs web sebagai media untuk memasarkan produk yang diproduksi, Anda dapat menggunakan blog gratis. Atau, anda dapat mendaftar sebagai affiliate di situs-situs yang saat ini sudah banyak ditemukan. Namun, untuk memilih menjadi affiliate, diharapkan Anda tidak terburu-buru dan berhati-hati karena tidak sedikit situs yang melakukan penipuan.</p>\r\n'),
(23, 'Dari Hoby menjadi UKM Kerajinan tangan', 5, 1, '07-24-2016', '2196-2016-07-24.jpg', '<p>UKM Kerajinan tangan sangat membutuhkan kreativitas. Jangan pernah ragu untuk memulai usaha ini, Banyak orang yang melakukan usaha ini dengan mengawalinya dari hobi. Karena hobi kreatif inilah, banyak juga yang mendulang rupiah dari usaha ini. Karya seni akan selalu bernilai ekonomis hal ini dikarenakan nilainya yang berharga. Banyak orang yang menginginkan kerajinan tangan sebagai kebutuhan, seperti souvenir pada acar pernikahan, hiasan bahkan untuk kenang-kenangan. Untuk itu bisnis ini sangat menjanjikan. Banyak kerajinan tangan Indonesia yang mendunia karena nilai seni yang dimilikinya. Untuk berbisnis kerajinan tangan, anda perlu memperhatikan hal-hal berikut yang akan menunjang usaha anda:</p>\r\n\r\n<ol>\r\n	<li><strong>Gunakan Bahan Berkualitas</strong></li>\r\n</ol>\r\n\r\n<p>Gunakanlah bahan-bahan bekualitas dalam membuat kerajinan tangan anda. Bahan yang berkualitas akan sangat bermanfaat untuk ketahanan produk kerajinan anda. Bahan yang berkualitas tidak harus didapatkan dari bahan yang mahal untuk dibeli, bahan ini juga dapat anda temukan dari alam. Bahan-bahan alam yang tidak terpakai akan sangat bermanfaat untuk menambah nilai sena produk-produk kerajinan anda. Jangan lupa bahwa pemanfaatan jenis sampah tertentu juga akan sangat baik menjadi bahan kerajinan karena akan mendukung program pemerintah tentang daur ulang sampah. Nilai lain yang akan anda dapatkan dari pemanfaatan sampah adalah nilai ekonomis, karena anda tidak perlu membayar mahal untuk menemukannya, bahkan anda dapat menemukannya secara gratis.</p>\r\n\r\n<ol>\r\n	<li><strong>Membuka Jaringan Pasar</strong></li>\r\n</ol>\r\n\r\n<p>Penting bagi anda penggelut usaha ini untuk terus membuka jaringan pasar anda. Anda dapat menemukan pelanggan-pelanggan baru dengan cara membuka peluang kerja sama dengan toko-toko kerajinan ataupun pasar tradisional. Semakin dikenal produk kerajinan anda, akan semakin banyak pelanggan yang mencari produk anda, tentu dengan harga bersaing yang anda tentukan sendiri dengan tetap menghitung keuntungan bagi anda.</p>\r\n\r\n<ol>\r\n	<li><strong>Promosi yang Tepat</strong></li>\r\n</ol>\r\n\r\n<p>Promosi yang tepat bagi anda akan menunjang peningkatan jumlah pembelian produk kerajinan tangan anda. Untuk itu lakukan segala cara untuk mempromosikan produk kerajinan anda. Untuk mempromosikan produk anda, dapat anda lakukan melalui lisan, menggunakan media sosial seperti website, Facebook, Twitter dan lainnya. manfaatkan jaringan anda untuk mempromosikan produk anda.</p>\r\n'),
(24, 'Peran Penting Dukungan Pemerintah terhadap UKM', 5, 1, '07-17-2016', '1229-2016-07-24.jpg', '<p><strong>Peran Penting Dukungan Pemerintah terhadap UKM</strong> &ndash; Pemerintah melalui Kementrian Koperasi dan Usaha Kecil Menengah telah sejak beberapa tahun menggalakkan program kewirausahaan bagi masyarakat umum, pemuda dan mahasiswa. Program-programnya pun bervariasi, mulai dari pemberian modal kecil untuk usaha rumahan, hingga program wirausaha mahasiswa yang tersebar tak hanya di Universitas negeri tetapi juga swasta di seluruh Indonesia. Proposal bervariasi bernilai mulai dari 1 hingga 10 juta rupiah. Tahun lalu pun diadakan seminar kewirausahaan gratis untuk umum yang mendatangkan pengusaha-pengusaha muda yang sukses di Indonesia, tujuannya adalah untuk menginspirasi lebih banyak pengusaha muda dalam mengembangkan bakat bisnis serta memulai usaha mikro.</p>\r\n\r\n<p>Berikut ini adalah manfaat dukungan pemerintah pada UKM untuk menyokong perekonomian nasional Indonesia :</p>\r\n\r\n<ol>\r\n	<li><strong>Menyerap Lebih Banyak Pekerja</strong></li>\r\n</ol>\r\n\r\n<p>UKM ini dianggap sebagai penyerap tenaga kerja paling banyak dibandingkan dengan badan usaha milik negara atau swasta lainnya. Seperti kita tahu bahwa kebanyakan perusahaan kelas atas akan memerlukan tenaga professional terampil dengan pendidikan tinggi. Meninggalkan yang tidak memiliki pendidikan tinggi tanpa pekerjaan. Beruntunglah dengan adanya UKM maka lapangan kerja terbuka lebih maksimal dan menyerap lebih banyak pekerja bahkan yang memiliki pendidikan paling rendah.</p>\r\n\r\n<ol>\r\n	<li><strong>Menambah Pemasukan Devisa Negara</strong></li>\r\n</ol>\r\n\r\n<p>Beberapa produk UKM berskala menengah telah berhasil menembus pasar internasional melalui ekspor sehingga menambah pemasukan negara, tidak hanya dari segi migas saja. Potensi ini akan terus bertambah apabila negara semakin mendukung perkembangan UKM, melihat potensi secara teliti dan memodali dengan pendanaan yang lebih baik.</p>\r\n\r\n<ol>\r\n	<li><strong>Memaksimalkan Potensi Sumber Daya Alam</strong></li>\r\n</ol>\r\n\r\n<p>Dengan adanya dukungan pemerintah dalam membantu membiayai usaha kecil dan menengah maka akan merangsang lebih banyak orang dalam memanfaatkan sumber daya alam di sekitar mereka. Tentu saja ini lebih baik daripada apabila SDA kita dikuasai oleh orang asing. Hal ini juga dapat membuat kita lebih independen dalam SDA seperti bahan pangan dan pakaian agar tidak selalu tergantung pada hasil impor akibat perdagangan bebas.</p>\r\n\r\n<p>Indonesia harus lebih jeli melihat peluang untuk kesinambungan ekonomi di masa mendatang. Oleh karena itu sudah sepatutnya pemerintah semakin meningkatkan bantuan berupa finansial, penyuluhan serta pelatihan bagi pengusaha-pengusaha muda Indonesia agar semakin bermunculan dan membuat ekonomi kita menjadi lebih baik. Hal ini juga agar Indonesia dapat semakin maju di kancah perdagangan internasional.</p>\r\n'),
(25, 'Keuntungan Membuka Usaha Sendiri', 5, 1, '07-24-2016', '0608-2016-07-24.jpg', '<p><strong>Membuka usaha sendiri memiliki beberapa keuntungan</strong> yang tidak didapatkan daripada ketika kita bekerja di bawah orang lain, menjadi karyawan biasa. Membuka usaha sendiri membuka peluang untuk menjadi mandiri, membuka koneksi, mengembangkan ide, mendapatkan keuntungan finansial dan emosional yang lebih daripada jika bekerja sebagai karyawan. Selain itu, Anda juga dapat membantu lebih banyak orang dengan mengembangkan lapangan pekerjaan.</p>\r\n\r\n<p><a href="http://artikel.co/1611/beberapa-contoh-usaha-kecil-yang-menguntungkan.html" target="_blank">Membuka usaha kecil</a> pun tidak sulit. Anda bisa memulai dari hobi dan membuat barang-barang rumahan dan buatan tangan yang seringkali idenya berbeda dari yang lain. Hal ini merupakan salah satu keuntungan lain dalam bisnis rumahan. Itu baru skala kecilnya saja. Indonesia termasuk salah satu negara yang tingkat wiraswastanya masih rendah. Ini berakibat pada terbengkalainya sumber daya alam yang tersedia di daerah-daerah, karena para pemudanya lebih memilih menjadi karyawan.</p>\r\n\r\n<p>Selain keuntungan di atas, Anda dapat melihat beberapa manfaat signifikan dari <a href="http://artikel.co/3306/keuntungan-membuka-usaha-sendiri.html">membuka usaha sendiri</a> seperti :</p>\r\n\r\n<ul>\r\n	<li><strong>Melatih Kemandirian</strong></li>\r\n</ul>\r\n\r\n<p>Membuka usaha berarti membuat Anda berusaha untuk memproduksi sesuatu agar memiliki nilai jual, atau menjual kembali sesuatu dengan usaha Anda sendiri. Ini berarti Anda terdorong untuk memikirkan ide-ide lebih kreatif dan bukan mengikuti pola kerja perusahaan yang cenderung memberikan perintah bagi Anda melakukan sesuatu. Para pengusaha juga harus memiliki etos kerja yang kuat, yang menandakan kematangan pribadi yang lebih baik.</p>\r\n\r\n<ul>\r\n	<li><strong>Menghidupkan Mimpi</strong></li>\r\n</ul>\r\n\r\n<p>Mendirikan bisnis sendiri tidak selalu melulu soal uang. Banyak orang yang memiliki hobi serta kesukaan dan mimpi untuk membuat produk mereka menjadi terkenal untuk kepuasan pribadi, atau untuk tujuan yang lebih mulia yaitu membantu orang lain. Contohnya seperti usaha berjualan sayur organik yang diawali dari kesadaran akan pentingnya hidup sehat, serta usaha yang mengerahkan masyrakat untuk membersihkan lingkungan sekaligus memanfaatkan sampah menjadi barang dengan nilai jual. Lebih baik bekerja keras menghidupkan mimpi sendiri dan bukan mimpi orang lain, kan?</p>\r\n\r\n<ul>\r\n	<li><strong>Menghidupkan Ekonomi Mikro</strong></li>\r\n</ul>\r\n\r\n<p>Ekonomi mikro merupakan denyut nadi masyarakat akar rumpun. Kebanyakan ibu rumah tangga yang tidak bekerja dapat membantu penghasilan keluarga dengan adanya bisnis rumahan, tak hanya itu, membuka usaha juga dapat membantu meningkatkan kemampuan kemandirian masyarakat dalam skala yang lebih luas. Akan ada orang-orang yang membantu produksi, pemasaran, serta hal lainnya. Ini berarti Anda turut berpartisipasi memberdayakan masyarakat, yang merupakan salah satu perbuatan mulia.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE IF NOT EXISTS `tbl_news_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `category_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`cid`, `category_name`, `category_image`, `status`) VALUES
(5, 'Business', '0056-2015-03-21.png', 1),
(6, 'Technology', '6897-2015-03-21.png', 1),
(7, 'Books', '0694-2016-05-09.jpg', 1),
(8, 'Culture', '4301-2016-05-17.jpg', 1),
(9, 'tes', '5374-2016-05-17.jpg', 1),
(10, 'tesss', '1366-2016-05-20.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ukm`
--

CREATE TABLE IF NOT EXISTS `tbl_ukm` (
  `id_ukm` varchar(10) NOT NULL,
  `nama_ukm` varchar(150) NOT NULL,
  `jenis_ukm` varchar(25) NOT NULL,
  `pj_ukm` varchar(100) NOT NULL,
  `deskripsi_ukm` text NOT NULL,
  `alamat_ukm` text NOT NULL,
  PRIMARY KEY (`id_ukm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ukm`
--

INSERT INTO `tbl_ukm` (`id_ukm`, `nama_ukm`, `jenis_ukm`, `pj_ukm`, `deskripsi_ukm`, `alamat_ukm`) VALUES
('U0003', 'uda', '1', 'saya', 'asdasda', 'asasa'),
('U0004', 'uda', '2', 'saya', 'dvdv', 'dsfsdfs'),
('U0005', 'TES', '1', 'saya', 'asdsadsa', 'asdsadsad'),
('U0006', 'apa', '1', 'sdsf', 'sdfsdfsd', 'dssfsdf'),
('U0007', 'iya', '1', 'aasd', 'asdasdas', 'asdasdasas'),
('U0008', 'coba', '2', 'asadasd', 'asdasdasd', 'scxsdcsdcds');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(15) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `Username`, `Password`, `Email`) VALUES
(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'email@website.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
