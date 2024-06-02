class Wisata {
  final String nama;
  final String image;
  final String deskripsi;
  final List<String> kategori;
  final List<String> motivation;
  final List<String> service;
  final List<String> aktivitas;

  Wisata({
    required this.nama,
    required this.image,
    required this.deskripsi,
    required this.kategori,
    required this.motivation,
    required this.service,
    required this.aktivitas,
  });
}

List<Wisata> daftarWisataSurabaya = [
  Wisata(
    nama: 'Jalan Tunjungan',
    image: 'assets/images/tunjungan.jpg',
    deskripsi:
        'Jalan Tunjungan adalah jalan utamas di Surabaya yang terkenal dengan bangunan-bangunan bersejarah. Jalan ini juga menjadi pusat perbelanjaan dan bisnis di Surabaya. Jalan Tunjungan adalah tempat yang wajib dikunjungi bagi para wisatawan yang ingin menikmati keindahan arsitektur kota Surabaya.',
    kategori: ['History & Heritage'],
    motivation: [
      'Escape - 92%',
      'Social Interaction - 92%',
      'Strenghthening family bonds - 90%'
    ],
    service: ['Lingkungan - 88%', 'Infrastruktur - 86%', 'Fasilitas - 82%'],
    aktivitas: ['Mengambil Foto - 78%', 'Belajar - 76%'],
  ),
  Wisata(
    nama: 'Balai Pemuda Alun - Alun Surabaya',
    image: 'assets/images/balai-pemuda.jpg',
    deskripsi:
        'Balai Pemuda dan Alun-alun Surabaya adalah tempat bersejarah yang menjadi pusat kegiatan seni dan budaya di Surabaya. Balai Pemuda adalah gedung tua yang menjadi saksi sejarah perjuangan rakyat Surabaya dalam mempertahankan kemerdekaan Indonesia.',
    kategori: [
      'History & Heritage',
    ],
    motivation: [
      'Escape - 92%',
      'Social Interaction - 92%',
      'Strenghthening family bonds - 90%'
    ],
    service: ['Lingkungan - 88%', 'Infrastruktur - 86%', 'Fasilitas - 82%'],
    aktivitas: ['Mengambil Foto - 78%', 'Belajar - 76%', 'Berolahraga - 70%'],
  ),
  Wisata(
    nama: 'Museum Pendidikan Surabaya',
    image: 'assets/images/museum-pendidikan.jpeg',
    deskripsi:
        'Museum Pendidikan Surabaya adalah museum yang menyajikan sejarah pendidikan di Surabaya dan Indonesia. Museum ini memiliki koleksi benda-benda bersejarah yang berkaitan dengan dunia pendidikan di Indonesia.',
    kategori: [
      'Museum',
    ],
    motivation: [
      'Educational Opportunity - 96%',
      'Escape - 92%',
      'Relaxation - 78%'
    ],
    service: ['Lingkungan - 98%', 'Infrastruktur - 96%', 'Fasilitas - 90%'],
    aktivitas: ['Belajar - 89%', 'Mengambil Foto - 82%'],
  ),
  Wisata(
    nama: 'Museum Surabaya Gedung Siola',
    image: 'assets/images/gedung-siola.jpg',
    deskripsi:
        'Museum Surabaya Gedung Siola adalah museum yang menyajikan sejarah kota Surabaya. Museum ini memiliki koleksi benda-benda bersejarah yang berkaitan dengan sejarah kota Surabaya.',
    kategori: ['Museum'],
    motivation: [
      'Educational Opportunity - 92%',
      'Escape - 88%',
      'Relaxation - 74%'
    ],
    service: ['Lingkungan - 98%', 'Infrastruktur - 96%', 'Fasilitas - 90%'],
    aktivitas: ['Belajar - 96%', 'Mengambil Foto - 76%'],
  ),
  Wisata(
    nama: 'Masjid Nasional Al Akbar',
    image: 'assets/images/masjid-nasional.jpg',
    deskripsi:
        'Masjid Nasional Al Akbar adalah masjid terbesar di Surabaya yang menjadi salah satu ikon kota Surabaya. Masjid ini memiliki arsitektur yang megah dan menjadi tempat ibadah umat Islam di Surabaya.',
    kategori: ['Religi'],
    motivation: [
      'Relaxation - 98%',
      'Social Interaction - 92%',
      'Self-fulfillment - 88%'
    ],
    service: ['Infrastruktur - 98%', 'Lingkungan - 96%', 'Fasilitas - 90%'],
    aktivitas: ['Beribadah - 100%', 'Mengambil Foto - 78%'],
  ),
  Wisata(
    nama: 'Makam Sunan Ampel',
    image: 'assets/images/makam-sunan-ampel.jpeg',
    deskripsi:
        'Makam Sunan Ampel adalah makam yang menjadi tempat ziarah umat Islam di Surabaya. Makam ini merupakan tempat bersejarah yang menjadi saksi sejarah penyebaran agama Islam di Indonesia.',
    kategori: ['Religi'],
    motivation: [
      'Relaxation - 90%',
      'Educational Opportunity - 86%',
      'Social Interaction - 84%'
    ],
    service: ['Infrastruktur - 90%', 'Lingkungan - 88%', 'Fasilitas - 82%'],
    aktivitas: ['Beribadah - 96%', 'Mengambil Foto - 78%', 'Belajar - 70%'],
  ),
  Wisata(
    nama: 'Monumen Tugu Pahlawan',
    image: 'assets/images/monumen-tugu.jpeg',
    deskripsi:
        'Monumen Tugu Pahlawan adalah monumen yang dibangun untuk mengenang para pahlawan yang gugur dalam pertempuran 10 November 1945 di Surabaya. Monumen ini menjadi simbol perjuangan rakyat Surabaya dalam mempertahankan kemerdekaan Indonesia.',
    kategori: [
      'Monumen & Landmark',
    ],
    motivation: [
      'Strengthning family bonds - 97%',
      'Educational Opportunity - 92%',
      'Escape - 88%'
    ],
    service: ['Infrastruktur - 98%', 'Lingkungan - 96%', 'Fasilitas - 90%'],
    aktivitas: ['Mengambil Foto - 78%', 'Belajar - 76%'],
  ),
  Wisata(
      nama: 'Monumen Kapal Selam',
      image: 'assets/images/monumen-kapal.jpg',
      deskripsi:
          'Monumen Kapal Selam adalah monumen yang dibangun untuk mengenang sejarah kapal selam di Indonesia. Monumen ini merupakan kapal selam nyata yang telah dipensiunkan dan dijadikan sebagai objek wisata.',
      kategori: [
        'Monumen & Landmark',
      ],
      motivation: [
        'Escape - 92%',
        'Social Interaction - 92%',
        'Strenghthening family bonds - 90%'
      ],
      service: [
        'Infrastruktur - 95%',
        'Lingkungan - 89%',
        'Fasilitas - 85%'
      ],
      aktivitas: [
        'Mengambil Foto - 76%',
        'Belajar - 70%'
      ]),
  Wisata(
    nama: 'Kebun Binatang Surabaya',
    image: 'assets/images/Kebun-Binatang-Surabaya.jpg',
    deskripsi:
        'Kebun Binatang Surabaya adalah kebun binatang yang menjadi tempat rekreasi keluarga di Surabaya. Kebun binatang ini memiliki berbagai koleksi hewan yang langka dan dilindungi.',
    kategori: [
      'Outdoor and Nature',
      'Family Activies',
    ],
    motivation: ['Relaxation - 98%', 'Escape - 92%', 'Play - 88%'],
    service: ['Lingkungan - 96%', 'Fasilitas - 94%', 'Infrastruktur - 88%'],
    aktivitas: ['Berinteraksi dengan satwa - 96%', 'Mengambil Foto - 87%'],
  ),
  Wisata(
    nama: 'Kebun Raya Mangrove Gunung Anyar',
    image: 'assets/images/kebun-raya-mangrove.jpg',
    deskripsi:
        'Kebun Raya Mangrove Gunung Anyar adalah kebun raya yang menyajikan keindahan alam mangrove di Surabaya. Kebun raya ini menjadi tempat rekreasi alam yang cocok untuk berjalan-jalan santai dan menikmati keindahan alam.',
    kategori: [
      'Outdoor and Nature',
      'Family Activies',
    ],
    motivation: ['Relaxation - 98%', 'Escape - 92%', 'Play - 88%'],
    service: ['Lingkungan - 96%', 'Fasilitas - 94%', 'Infrastruktur - 88%'],
    aktivitas: ['Melihat Pemandangan - 96%', 'Mengambil Foto - 87%'],
  ),
  Wisata(
      nama: 'Kampung Pecinaan Kapasan Dalam',
      image: 'assets/images/kampung-pecinan-kapasan.jpg',
      deskripsi:
          'Kampung Pecinan Kapasan Dalam adalah kampung wisata yang memperkenalkan budaya Tionghoa di Surabaya. Kampung ini memiliki bangunan-bangunan bersejarah dan menjadi tempat belanja dan kuliner khas Tionghoa.',
      kategori: [
        'Kampung Wisata',
      ],
      motivation: [
        'Strengthning family bonds - 93%',
        'Romance - 88%',
        'Social Interaction - 86%'
      ],
      service: [
        'Lingkungan - 94%',
        'Infrastruktur - 86%',
        'Fasilitas - 82%'
      ],
      aktivitas: [
        'Mengambil Foto - 86%',
        'Melihat Pemandangan - 78%'
      ]),
  Wisata(
      nama: 'Kampung Lawas Maspati',
      image: 'assets/images/kampung-lawas-maspati.png',
      deskripsi:
          'Kampung Lawas Maspati adalah kampung wisata yang memperkenalkan budaya Jawa di Surabaya. Kampung ini memiliki bangunan-bangunan bersejarah dan menjadi tempat belanja dan kuliner khas Jawa.',
      kategori: [
        'Kampung Wisata'
      ],
      motivation: [
        'Escape - 94%',
        'Relaxation - 90%',
        'Social Interaction - 86%'
      ],
      service: [
        'Lingkungan - 94%',
        'Infrastruktur - 86%',
        'Fasilitas - 82%'
      ],
      aktivitas: [
        'Mengambil Foto - 86%',
        'Melihat Pemandangan - 78%'
      ]),
  Wisata(
      nama: 'Taman Suroboyo',
      image: 'assets/images/taman-suroboy.jpg',
      deskripsi:
          'Taman Suroboyo adalah taman kota yang menjadi tempat rekreasi keluarga di Surabaya. Taman ini memiliki berbagai wahana permainan dan menjadi tempat bermain anak-anak di Surabaya.',
      kategori: [
        'City Park',
      ],
      motivation: [
        'Relaxation - 98%',
        'Social Interaction - 92%',
        'Educational Opportunity - 85%'
      ],
      service: [
        'Infrastruktur - 90%',
        'Lingkungan - 90%',
        'Fasilitas - 90%'
      ],
      aktivitas: [
        'Mengambil Foto - 84%',
        'Belajar - 58%',
        'Makan Bersama - 56%'
      ]),
  Wisata(
      nama: 'Taman Bungkul',
      image: 'assets/images/taman-bungkul.png',
      deskripsi:
          'Taman Bungkul adalah taman kota yang menjadi tempat nongkrong dan kuliner di Surabaya. Taman ini memiliki berbagai warung makanan dan menjadi tempat favorit warga Surabaya untuk berkumpul.',
      kategori: [
        'City Park',
      ],
      motivation: [
        'Relaxation - 90%',
        'Escape - 86%',
        'Social Interaction - 84%'
      ],
      service: [
        'Lingkungan - 96%',
        'Infrastruktur - 94%',
        'Fasilitas - 82%'
      ],
      aktivitas: [
        'Mengambil Foto - 72%',
        'Meliahat Pemandangan - 66%',
        'Berolahraga - 66%'
      ]),
  Wisata(
      nama: 'Tunjungan Plaza',
      image: 'assets/images/tunjungan.jpg',
      deskripsi:
          'Tunjungan Plaza adalah pusat perbelanjaan yang terletak di jantung kota Surabaya. Mall ini memiliki berbagai toko dan restoran yang menjual berbagai macam barang dan makanan.',
      kategori: [
        'Pusat Perbelanjaan',
      ],
      motivation: [
        'Escape - 92%',
        'Social Interaction - 92%',
        'Strenghthening family bonds - 90%'
      ],
      service: [
        'Infrastruktur - 100%',
        'Lingkungan - 94%',
        'Fasilitas - 92%'
      ],
      aktivitas: [
        'Mengambil Foto - 76%',
        'Berbelanja - 70%',
        'Makan Bersama - 62%'
      ]),
  Wisata(
    nama: 'Galaxy Mall Surabaya',
    image: 'assets/images/tunjungan-plaza.jpeg',
    deskripsi:
        'Galaxy Mall adalah pusat perbelanjaan yang terletak di Surabaya Barat. Mall ini memiliki berbagai toko dan restoran yang menjual berbagai macam barang dan makanan.',
    kategori: ['Pusat Perbelanjaan'],
    motivation: [
      'Escape - 92%',
      'Social Interaction - 92%',
      'Strenghthening family bonds - 90%'
    ],
    service: ['Fasilitas - 90%', 'Lingkungan - 88%', 'Infrastruktur - 80%'],
    aktivitas: ['Berbelanja - 96%', 'Makan Bersama - 72%'],
  ),
  Wisata(
    nama: 'Pasar Genteng',
    image: 'assets/images/pasar-genteng.jpg',
    deskripsi:
        'Pasar Genteng adalah pasar tradisional yang terletak di jantung kota Surabaya. Pasar ini menjadi tempat belanja dan kuliner favorit warga Surabaya.',
    kategori: ['Pasar Tradisional'],
    motivation: [
      'Social Interaction - 95%',
      'Escape - 88%',
      'Relaxation - 74%'
    ],
    service: ['Infrastuktur - 88%', 'Fasilitas - 82%'],
    aktivitas: ['Berbelanja - 96%', 'Makan Bersama - 72%'],
  ),
  Wisata(
    nama: 'Pasar Pabean',
    image: 'assets/images/pasar-pabean.jpg',
    deskripsi:
        'Pasar Pabean adalah pasar tradisional yang terletak di Pelabuhan Tanjung Perak. Pasar ini menjadi tempat belanja dan kuliner favorit warga Surabaya.',
    kategori: ['Pasar Tradisional'],
    motivation: ['Social Interaction - 92%', 'Escape - 86%'],
    service: ['Infrastruktur - 80%', ' Fasilitasa - 78%'],
    aktivitas: ['Berbelanja - 94%', 'Makan Bersama- 72%'],
  ),
  Wisata(
    nama: 'Masjid Cheng Ho',
    image: 'assets/images/masjid-cheng-ho.jpeg',
    deskripsi:
        'Masjid Cheng Ho adalah masjid yang dibangun untuk mengenang sejarah perjalanan Laksamana Cheng Ho ke Indonesia. Masjid ini memiliki arsitektur khas Tionghoa dan menjadi tempat ibadah umat Islam di Surabaya.',
    kategori: [
      'Cagar Budaya',
      'Religi',
    ],
    motivation: [
      'Relaxation - 98%',
      'Social Interaction - 92%',
      'Self-fulfillment - 88%'
    ],
    service: ['Lingkungan - 96%', 'Fasilitas - 90%', 'Infrastruktur - 88%'],
    aktivitas: ['Beribadah - 92%', 'Mengambil Foto - 78%'],
  ),
  Wisata(
    nama: 'House of Sampoerna',
    image: 'assets/images/house-of-sampoerna.jpg',
    deskripsi:
        'House of Sampoerna adalah museum rokok yang memperkenalkan sejarah industri rokok di Indonesia. Museum ini memiliki koleksi benda-benda bersejarah yang berkaitan dengan industri rokok di Indonesia.',
    kategori: ['Cagar Budaya'],
    motivation: [
      'Educational Opportunity - 92%',
      'Escape - 88%',
      'Social Interaction - 84%'
    ],
    service: ['Lingkungan - 96%', 'Fasilitas - 90%', 'Infrastruktur - 88%'],
    aktivitas: ['Belajar - 96%', 'Mengambil Foto - 76%'],
  ),
  Wisata(
    nama: 'Mirota Batik & Handicraft',
    image: 'assets/images/mirota-batik.jpg',
    deskripsi:
        'Mirata Batik & Handicraft adalah toko yang menjual berbagai macam batik dan kerajinan tangan khas Surabaya. Toko ini menjadi tempat belanja oleh-oleh khas Surabaya.',
    kategori: ['Art & Culture'],
    motivation: ['Social Interaction - 92%', 'Escape - 88%', 'Romance - 84%'],
    service: ['Infrastruktur - 90%', 'Fasilitas - 88%'],
    aktivitas: ['Berbelanja - 96%', 'Mengambil Foto - 78%', 'Belajar - 70%'],
  ),
  Wisata(
    nama: 'Stadion Gelora Bung Tomo',
    image: 'assets/images/stadion-gelora-bung-tomo.jpg',
    deskripsi:
        'Stadion Gelora Bung Tomo (GBT) adalah stadion sepak bola yang menjadi markas dari klub sepak bola terkenal di Surabaya.',
    kategori: ['Sport'],
    motivation: ['Social Interaction - 94%', 'Escape - 90%', 'Play - 88%'],
    service: ['Lingkungan - 98%', 'Infrastruktur - 96%', 'Fasilitas - 90%'],
    aktivitas: ['Berolahraga - 96%', 'Mengambil Foto - 76%'],
  ),
  Wisata(
      nama: 'Pusat Olahraga KONI',
      image: 'assets/images/pusat-olahraga-koni.jpg',
      deskripsi:
          'Pusat Olahraga KONI adalah tempat yang menyediakan berbagai macam fasilitas olahraga untuk masyarakat Surabaya.',
      kategori: ['Sport'],
      motivation: ['Relaxation - 98%', 'Escape -84%', 'Play - 82%'],
      service: ['Lingkungan - 96%', 'Fasilitas - 94%', 'Infrastruktur - 84%'],
      aktivitas: ['Berolahraga - 100%']),
  Wisata(
      nama: 'Kodam Street Food Surabaya',
      image: 'assets/images/kodam-street-food.jpg',
      deskripsi:
          'Kodam Street Food Surabaya adalah tempat makan yang menawarkan berbagai macam makanan khas Surabaya.',
      kategori: [
        'Kuliner'
      ],
      motivation: [
        'Escape - 94%',
        'Social Interaction - 92%',
        'Romance - 88%'
      ],
      service: [
        'Lingkungan - 90%',
        'Fasilitas - 88%',
        'Infrastruktur - 70%'
      ],
      aktivitas: [
        'Makan Bersama - 92%',
        'Mengambil Foto - 66%',
        'Berbelanja - 66%'
      ]),
  Wisata(
      nama: 'Kuliner Pecinan Kembang Jepun',
      image: 'assets/images/kuliner-kembang-jepun.jpg',
      deskripsi:
          'Wisata Pecinan Kembang Jepun adalah tempat wisata kuliner yang menawarkan berbagai hidangan khas Tionghoa.',
      kategori: [
        'Kuliner'
      ],
      motivation: [
        'Escape - 94%',
        'Strengthning family bonds - 92%',
        'Relaxation - 78%'
      ],
      service: [
        'Lingkungan - 90%',
        'Fasilitas - 88%',
        'Infrastruktur - 82%'
      ],
      aktivitas: [
        'Makan Bersama - 86%',
        'Mengambil Foto - 66%',
        'Berbelanja - 66%'
      ]),
  Wisata(
      nama: 'Jatim International Expo (JIE) Convention Exhibiton',
      image: 'assets/images/jie.jpg',
      deskripsi:
          'Jatim International Expo (JIE) Convention Exhibition adalah pusat pameran dan konvensi yang terletak di Surabaya.',
      kategori: [
        'Mice'
      ],
      motivation: [
        'Escape - 92%',
        'Social Interaction - 92%',
        'Strenghthening family bonds - 90%'
      ],
      service: [
        'Infrastruktur - 98%',
        'Fasilitas - 96%',
        'Lingkungan - 75%'
      ],
      aktivitas: [
        'Mengambil Foto - 78%',
        'Belajar - 76%'
      ]),
  Wisata(
    nama: 'Surabaya Convention Center',
    image: 'assets/images/scc.jpg',
    deskripsi:
        'Surabaya Convention Center (SCC) adalah pusat konvensi dan pameran yang menjadi tempat berbagai acara bisnis dan hiburan di Surabaya.',
    kategori: [
      'Mice',
    ],
    motivation: [
      'Strenghthening family bonds - 97%',
      'Educational Opportunity - 92%',
      'Self-fulfillment - 88%'
    ],
    service: ['Infrastruktur - 98%', 'Fasilitas - 96%', 'Lingkungan - 94%'],
    aktivitas: ['Mengambil Foto - 78%', 'Belajar - 76%', 'Makan Bersama - 50%'],
  ),
];
