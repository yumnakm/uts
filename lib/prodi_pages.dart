import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Model ProgramStudi
class ProgramStudi {
  final String nama;
  final String profil;
  final String visi;
  final String misi;
  final String akreditasi;
  final String ketuaProdi;
  final List<String> dosen;
  final String website;
  final String prestasiMahasiswa;
  final List<String> carouselImages;

  ProgramStudi(
      {required this.nama,
      required this.profil,
      required this.visi,
      required this.misi,
      required this.akreditasi,
      required this.ketuaProdi,
      required this.dosen,
      required this.website,
      required this.prestasiMahasiswa,
      required this.carouselImages});
}

// Daftar Program Studi
final List<ProgramStudi> daftarProgramStudi = [
  // Data program studi
  ProgramStudi(
    nama: 'Ilmu Administrasi Negara',
    profil:
        'Program Studi Administrasi Publik/Negara Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk menghasilkan Sarjana Administrasi Publik yang memiliki integritas, kepribadian, kepekaan sosial dan karakter yang tangguh serta kompetensi keilmuan yang memadai dan daya saing tinggi.',
    visi:
        '“MENJADI PROGRAM STUDI ILMU ADMINISTRASI NEGARA UNGGUL BERKARAKTER BELA NEGARA”',
    misi:
        '1. Menyelenggarakan dan mengembangkan pendidikan bidang ilmu administrasi negara yang berkarakter bela negara.\n 2. Meningkatkan budaya riset dalam pengembangan ilmu administrasi negara yang berdayaguna untuk peningkatkan kesejahteraan masyarakat.\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n 4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi ilmu administrasi negara.\n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial yang relevan dengan bidang ilmu administrasi negara.\n 6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi ilmu administrasi negara.\n 7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri.',
    akreditasi:
        'Program Studi Ilmu Administrasi Negara telah terakreditasi UNGGUL oleh BAN-PT.',
    ketuaProdi: 'Dra. Susi Hardjati, M.AP',
    dosen: ['Dr. Diana Hertati, M.Si.', 'Vidya Imanuari Pertiwi, S.AP., MPA.'],
    website: 'https://adneg.upnjatim.ac.id/#',
    prestasiMahasiswa: 'Tidak ditemukan',
    carouselImages: [
      'images/adpub.jpeg',
      'images/adpub2.jpeg',
      'images/adpub3.jpg'
    ],
  ),
  ProgramStudi(
    nama: 'Ilmu Administrasi Bisnis',
    profil:
        'Program Studi Administrasi bisnis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan. Pada tahun 1994, berdasarkan Surat Keputusan Bersama Menhankam dan Mendukbud Nomor: Kep/0373/U/1994 – Kep/10/XI/1994, tanggal 29 Nopember 1994, UPN “Veteran” Jatim berubah statusnya menjadi Perguruan Tinggi Swasta dengan semua progdinya berstatus “Disamakan”. Pada tanggal 6 Oktober 2014 UPN “Veteran” berubah statusnya menjadi Perguruan Tinggi Negeri (PTN), berdasarkan Peraturan Presiden Nomor: 122 Tahun 2014 tentang Penegerian UPN “Veteran” Jawa Timur.',
    visi:
        '"Visi Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN "Veteran Jawa Timur (FISIP-UPNVJT) sebagai lembaga pengembangan ilmu dan teknologi dibidang Administrasi Bisnis yang Unggul, Terpercaya dan bekarakter Bela Negera Pada tahun 2024"',
    misi:
        '1.Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan Negara.\n 2. Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, system informasi bisnis, operasibisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat\n 3. Mengembangkan dan menguatkan hubungan kerjasama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta. Dalam dan luar negeri.',
    akreditasi:
        'Program Studi Ilmu Administrasi Bisnis telah terakreditasi A oleh BAN-PT.',
    ketuaProdi: 'Dr.Acep Samsudin., S,Sos.,MM.,MA',
    dosen: ['Dr.Ir. Rusdi Hidayat N, M.Si', 'Dr. Drs. Nurhadi, M.Si'],
    website: 'https://adbis.upnjatim.ac.id/',
    prestasiMahasiswa:
        '1. Juara 1 Kata Beregu Putra Porprov Jatim 2023 [Julius Emmanuel S.]\n 2. Juara Persahabatan Duta Perlindungan Anak Jawa Timur 2023 [Silvia Nur S.]',
    carouselImages: [
      'images/adbis.png',
      'images/adbis2.jpg',
      'images/adbis3.jpg'
    ],
  ),
  ProgramStudi(
    nama: 'Ilmu Komunikasi',
    profil:
        'Berdasarkan Surat Keputusan Badan Akreditasi Nasional Perguruan Tinggi, Departemen Pendidikan Nasional No. 2982/BAN-PT/AKRED/PT/XII /2016, Tertanggal 20 Desember 2016, Program Studi Ilmu Komunikasi memperoleh nilai Akreditasi “A”. Untuk memperoleh gelar kesarjanaan setiap mahasiswa program studi Ilmu Komunikasi harus menyelesaikan antara 149 – 160 SKS yang terdiri dari mata kuliah wajib 137 SKS dan mata kuliah pilihan sebanyak 12 – 23 SKS.',
    visi:
        '“Menjadi Program Studi Ilmu Komunikasi unggul dalam mencetak sarjana yang kompeten dalam bidang penyiaran, jurnalistik, hubungan masyarakat, periklanan dan dijiwai oleh nilai-nilai Bela Negara di wilayah Indonesia"',
    misi:
        '1. Menjunjung tinggi tata nilai-nilai agama, moral, etika dan tanggungjawab professional utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat dan periklanan.\n 2. Mampu menerapkan teori Ilmu Komunikasi dalam memecahkan masalah-masalah komunikasi dan mampu melakukan riset dan analisis dibidang Ilmu Komunikasi utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat dan periklanan.\n 3. Mampu merumuskan, mengimplementasikan dan mengevaluasi kebijakandibidang Ilmu Komunikasi yang terkait dalam bidang penyiaran, jurnalistik, hubungan masyarakat, periklanan.\n 4. Mampu melaksanakan tugas dengan disiplin dan penuh rasa tanggung jawab atas pencapaian hasil kerja organisasi utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat, periklanan.',
    akreditasi:
        'Program Studi Ilmu Komunikasi telah terakreditasi UNGGUL oleh BAN-PT.',
    ketuaProdi: 'Catur Suratnoaji, Dr., M.Si.',
    dosen: [
      'Irwan Dwi Arianto, S.Sos, M. I. Kom',
      'Ririn Puspita T, S.Sos, M.Med.Kom'
    ],
    website: 'https://ilkom.upnjatim.ac.id/',
    prestasiMahasiswa:
        '1. Juara 1 Tanding Kelas B Putri Dewasa & Pesilat Terbaik Putri Dewasa [Sekar Arum Yulianti P.W.].\n 2. Juara 1 Tarung Bebas Sport and Language Center [Ahmad Derajat Waskito].\n 3. Juara 1 Tiktok & reels Competition International Virtual Short Course 2023.',
    carouselImages: [
      'images/ilkom.jpg',
      'images/ilkom2.jpg',
      'images/ilkom3.jpeg'
    ],
  ),
  ProgramStudi(
    nama: 'Hubungan Internasional',
    profil:
        'Program Sarjana Hubungan Internasional didirikan pada tanggal 30 September 2011 di bawah Fakultas Ilmu Sosial dan Ilmu Politik berdasarkan Keputusan Menteri Pendidikan Nasional nomor 216/E/O/2011.',
    visi:
        'Menjadi pusat pengembanganilmu hubungan internasional utamanya di bidang politik keamanan internasionaldan relasi transnasional yang unggul, mandiri, dan terpercaya serta mampubersaing di era global dengan dilandasi nilai dan semangat bela negara.',
    misi:
        '1. Menghasilkan lulusan yang berintegritas, berkepribadian, peka sosial, berkarakter kuat serta memiliki kompetensi keilmuan unggul dan berdaya saing tinggi. Lebih dari itu, beriman dan bertakwa dengan tetap menjunjung tinggi nilai dan semangat Bela Negara (Nasionalisme) yang mempersiapkan diri untuk kepentingan masyarakat, bangsa, dan negara.\n 2. Mendiseminasikan karya ilmiah, baik artikel ilmiah maupun hasil penelitian di bidang HI. Khususnya, dalam politik keamanan internasional dan hubungan transnasional; yang dapat diimplementasikan pada saat kegiatan pengajaran maupun pengabdian kepada masyarakat.\n 3. Meningkatkan dan memperkuat berbagai kerjasama dengan komunitas pengambil kebijakan, guna meningkatkan peran dan relevansi kajian HI yang mampu memberikan kontribusi nyata bagi masyarakat, bangsa, dan negara, serta masyarakat dunia.',
    akreditasi:
        'Program Studi Hubungan Internasional telah terakreditasi UNGGUL oleh BAN-PT.',
    ketuaProdi: 'Dr. Ario Bimo Utomo, S.I.P., MIR',
    dosen: [
      'Maria Indira Aryani, S.IP., M.Hub.Int',
      'Adiasri Putri Purbantina, Ph.D'
    ],
    website: 'https://hubint.upnjatim.ac.id/',
    prestasiMahasiswa:
        '1. Juara 2 Porprov Jatim VIII Taekwondo Kyorugi Senior Putra [Ryan Agung Priangga].\n 2. IISMA Awardee University Of Warsaw [Joscha Dafa Allegra Tombokan].\n 3. IISMA Awardee University Of Zagreb [Ofel Abiwada Abimanyu]',
    carouselImages: ['images/hi.jpg', 'images/hi2.jpg', 'images/hi3.jpg'],
  ),
  ProgramStudi(
    nama: 'Pariwisata',
    profil:
        'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020. Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia.',
    visi:
        '“MENJADI PROGRAM STUDI PARIWISATA UNGGULAN YANG ADAPTIF DAN INOVATIF MELALUI PENYELENGGARAAN PENDIDIKAN YANG BERKARAKTER BELA NEGARA DAN BERWAWASAN LINGKUNGAN DALAM MEWUJUDKAN PARIWISATA BERKELANJUTAN DAN BERORIENTASI GLOBAL”',
    misi:
        '1. Menyelenggarakan dan mengembangkan pendidikan bidang pariwisata yang adaptif, inovatif dan berkarakter bela negara\n 2. Meningkatkan budaya riset dalam pengembangan ilmu pariwisata yang berdaya guna untuk peningkatan kesejahteraan masyarakat\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal\n 4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi Pariwisata\n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial  yang relevan dengan bidang pariwisata\n 6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi Pariwisata.\n 7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri',
    akreditasi: 'Program Studi Pariwisata telah terakreditasi B oleh BAN-PT.',
    ketuaProdi: 'Dr. Yudiana Indriastuti, S.Sos., M.Si',
    dosen: [
      'Praja Firdaus N., M.Hub.Int',
      'Leily Suci Rahmatin, S.Par., M.Par'
    ],
    website: 'https://pariwisata.upnjatim.ac.id/',
    prestasiMahasiswa:
        '1. Juara 3 Tour Package Competition Marine Tourism Fest 2023 Politeknik Pariwisata Makassar.\n 2. Juara 3 Lomba Karya Tulis Ilmiah (Nawasena Tourism Expo).\n 3. Juara 2 Destination Marketing Plan Competition BTPC.',
    carouselImages: ['images/par.jpg', 'images/par2.jpg', 'images/par3.jpg'],
  ),
  ProgramStudi(
    nama: 'Linguistik Indonesia',
    profil:
        'Prodi S1 Linguistik Indonesia yang memusatkan kajian pada aspek kebahasaan ini bertujuan mengembangkan calon lulusan dengan kompetensi keahlian linguistik dengan kompetensi khusus sebagai seorang linguis (ahli bahasa), peneliti linguistik, dan praktisi linguistik Indonesia yang dinamis',
    visi:
        '"Menjadi pusat pengkajian linguistik Indonesia yang unggul pada tingkat nasional dan internasional serta berkarakter bela negara"',
    misi:
        '1. Menyelenggarakan pendidikan di bidang Linguistik Indonesia untuk menghasilkan lulusan yang inovatif, adaptif, dan responsif terhadap tantangan global.\n 2. Mengembangkan penelitian di bidang Linguistik Indonesia yang berorientasi pada kemajuan ilmu pengetahuan, teknologi, dan seni untuk menuju research university.\n 3.Mendedikasikan ilmu Linguistik Indonesia untuk kemajuan masyarakat.\n4. Membangun kerja sama dengan institusi pemerintah dan swasta pada tingkat nasional dan internasional.',
    akreditasi:
        'Program Studi Linguistik Indonesia telah terakreditasi B oleh BAN-PT.',
    ketuaProdi: 'Dr. Endang Sholihatin, S.Pd., M.Pd.',
    dosen: ['Dewi Puspa Arum, S.Pd., M.Pd.', 'Adelia Savitri, S.Hum., M.Hum.'],
    website: 'https://linguistik.upnjatim.ac.id/',
    prestasiMahasiswa: 'Tidak ditemukan',
    carouselImages: ['images/li.jpeg', 'images/li2.jpg', 'images/li3.jpeg'],
  ),
];

final Map<String, String> dosenImages = {
  'Dr. Diana Hertati, M.Si.': 'images/diana_hertati.jpg',
  'Vidya Imanuari Pertiwi, S.AP., MPA.': 'images/vidya_pertiwi.jpg',
  'Dr.Ir. Rusdi Hidayat N, M.Si': 'images/rusdi_hidayat.jpeg',
  'Dr. Drs. Nurhadi, M.Si': 'images/nurhadi.jpeg',
  'Irwan Dwi Arianto, S.Sos, M. I. Kom': 'images/irwan_arianto.jpg',
  'Ririn Puspita T, S.Sos, M.Med.Kom': 'images/ririn_puspita.jpeg',
  'Maria Indira Aryani, S.IP., M.Hub.Int': 'images/maria_indira.jpeg',
  'Adiasri Putri Purbantina, Ph.D': 'images/adiasri_putri.jpeg',
  'Praja Firdaus N., M.Hub.Int': 'images/praja_firdaus.jpeg',
  'Leily Suci Rahmatin, S.Par., M.Par': 'images/leily_suci.jpg',
  'Dewi Puspa Arum, S.Pd., M.Pd.': 'images/dewi_puspa.jpeg',
  'Adelia Savitri, S.Hum., M.Hum.': 'images/adelia_savitri.jpeg',
};

final Map<String, String> ketuaProdiImages = {
  'Dra. Susi Hardjati, M.AP': 'images/susi_hardjati.jpeg',
  'Dr.Acep Samsudin., S,Sos.,MM.,MA': 'images/acep_samsudin.jpg',
  'Catur Suratnoaji, Dr., M.Si.': 'images/catur_suratnoaji.jpeg',
  'Dr. Ario Bimo Utomo, S.I.P., MIR': 'images/ario_bimo.jpg',
  'Dr. Yudiana Indriastuti, S.Sos., M.Si': 'images/yudiana_indriastuti.jpg',
  'Dr. Endang Sholihatin, S.Pd., M.Pd.': 'images/endang_sholihatin.jpeg',
};

class ProdiPage extends StatelessWidget {
  final ProgramStudi programStudi;

  ProdiPage({required this.programStudi, required prodi});

  @override
  Widget build(BuildContext context) {
    final CarouselController _carouselController1 = CarouselController();

    return Scaffold(
      appBar: AppBar(
        title: Text(programStudi.nama),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                items: programStudi.carouselImages.map((item) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item,
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
                carouselController: _carouselController1,
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 0.5,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  onPageChanged: (index, _) =>
                      _carouselController1.animateToPage(index),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Profil Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: AutoSizeText(
                        programStudi.profil,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Visi Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: Text(
                        programStudi.visi,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Misi Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: Text(
                        programStudi.misi,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Akreditasi Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: Text(
                        programStudi.akreditasi,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Ketua Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 10),
                      child: Column(
                        children: [
                          Image.asset(
                            ketuaProdiImages[programStudi.ketuaProdi] ??
                                'images/default_avatar.jpg',
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          AutoSizeText(
                            programStudi.ketuaProdi,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w300,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Daftar Dosen Program Studi',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: programStudi.dosen.map((dosen) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: 35.0, top: 20, right: 35, bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(dosenImages[dosen] ??
                                  'images/default_avatar.jpg'),
                            ),
                            SizedBox(width: 10),
                            AutoSizeText(
                              ' $dosen',
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEA39),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'Prestasi Mahasiswa',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 500,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: Text(
                        programStudi.prestasiMahasiswa,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    _launchURL(programStudi
                        .website); // Panggil fungsi _launchURL() untuk membuka URL
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    backgroundColor: Color(
                        0xFFEFEA39), // mengatur warna latar belakang tombol
                  ),
                  child: Text(
                    'Kunjungi Website',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight
                          .w300, // mengatur ketebalan teks menjadi w300
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak bisa membuka $url';
    }
  }
}
