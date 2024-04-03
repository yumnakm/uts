import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart'; // Import package url_launcher
import 'package:uts/prodi_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> prodiList = [
    'Ilmu Administrasi Negara',
    'Ilmu Administrasi Bisnis',
    'Ilmu Komunikasi',
    'Hubungan Internasional',
    'Pariwisata',
    'Linguistik Indonesia',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 241, 244, 248),
      ),
      title: 'FISIP UPN "Veteran" Jawa Timur',
      home: MainPage(prodiList: prodiList),
    );
  }
}

class MainPage extends StatefulWidget {
  final List<String> prodiList;

  MainPage({required this.prodiList});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          toolbarHeight: 260,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Image.asset('images/logofisip.png', width: 280, height: 260),
          ),
          leadingWidth: 280,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          scrolledUnderElevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Container(
                width: 1330,
                decoration: BoxDecoration(
                  //color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: PageView(
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset(
                                'images/images.jpg',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset(
                                'images/images2.jpg',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset(
                                'images/images3.jpg',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 1),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _pageController,
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _pageController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 3,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 16,
                              dotHeight: 8,
                              dotColor: Color(0x4CEFD639),
                              activeDotColor: Color(0xFFEFEA39),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                    'Tentang Fakultas',
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
              padding: EdgeInsets.only(top: 20.0),
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
                      'Keberadaan Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Satu tahun kemudian Fakultas Ilmu Administrasi membuka satu jurusan baru yaitu jurusan Ilmu Komunikasi pada tahun ajaran 1994/1995. Dalam perkembangan selanjutnya terbit Surat Keputusan Rektor UPN “Veteran” Jawa Timur Nomor : Skep/101/IX/2005 tanggal 6 Mei 2005 tentang Pergantian nama Fakultas Ilmu Administrasi UPN”Veteran” Jawa Timur menjadi Fakultas Ilmu Sosial dan Ilmu Politik.',
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
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
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
                      'Visi & Misi',
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
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                width: 500,
                height: 860,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text(
                          'VISI',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 35.0, top: 20.0, right: 35.0),
                      child: Text(
                        '“MENJADI FAKULTAS ILMU SOSIAL DAN ILMU POLITIK UNGGUL BERKARAKTER BELA NEGARA”',
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
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'MISI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 20, right: 35, bottom: 20),
                      child: Text(
                        '1. Menyelenggarakan dan mengembangkan pendidikan bidang ilmu sosial dan ilmu politik yang berkarakter bela negara;\n2. Meningkatkan budaya riset dalam pengembangan ilmu sosial dan ilmu politik yang berdayaguna untuk peningkatan kesejahteraan masyarakat;\n3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal;\n4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabi litas pengelolaaan anggaran di fakultas ilmu sosial dan ilmu politik;\n5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial yang relevan dengan bidang ilmu sosial dan ilmu politik;\n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di fakultas ilmu sosial dan ilmu politik;\n7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
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
                    'Struktur Organisasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'images/struktur.jpg',
                    width: 500,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
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
                    'Program Studi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: widget.prodiList.map((prodi) {
                final programStudi =
                    daftarProgramStudi.firstWhere((p) => p.nama == prodi);
                return Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: 350, // Set the desired width
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdiPage(
                              programStudi: programStudi,
                              prodi: null,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(prodi),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFEFEA39)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(fontSize: 16)),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(350, 60),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 350, // Set the desired width
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman profil mahasiswa
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProfilePage(), // Ganti dengan halaman profil mahasiswa yang sesuai
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFEFEA39)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 16)),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(350, 60),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 10.0), // Padding hanya untuk ikon
                        child: CircleAvatar(
                          radius: 15, // Sesuaikan dengan ukuran yang diinginkan
                          backgroundImage: AssetImage(
                              'images/fotogrisska.jpeg'), // Ganti dengan path gambar Grisska Anda
                        ),
                      ),
                      CircleAvatar(
                        radius: 15, // Sesuaikan dengan ukuran yang diinginkan
                        backgroundImage: AssetImage(
                            'images/fotoyumna.png'), // Ganti dengan path gambar Yumna Anda
                      ),
                      Text('  Profil Mahasiswa'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
                child: GestureDetector(
                    onTap: () {
                      launch('mailto:fisip@upnjatim.ac.id'); // Launch email app
                    },
                    child: Column(children: [
                      SizedBox(height: 5),
                      Text('Hubungi Kami:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                          )),
                      Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.0), // Padding hanya untuk gambar
                                child: Image.asset(
                                  'images/email.png', // Gambar email
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('E-mail: fisip@upnjatim.ac.id',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]),
                      )
                    ])))
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
      ),
      body: ListView(
        children: [
          ProfileCard(
            name: 'Grisska Adelia',
            birthPlace: 'Surabaya',
            birthDate: '9 Januari 2005',
            address: 'Griya Mapan Sentosa BH-44 Waru, Sidoarjo',
            phoneNumber: '082232338582',
            email: 'grisskaadelia9@gmail.com',
            githubUrl: 'https://github.com/grisska',
            educationHistory:
                'UPN "Veteran Jawa Timur"\n"SMK Telkom Sidoarjo"\n"SMPN 19 Surabaya"',
            awards:
                'Juara 3 UI/UX Design Competition Amikom Purwokerto\nFinalist Business Plan Competition EMINEM 2023\nFinalist Business Plan GEMILANG 2023',
            imagePath: 'images/fotogrisska.jpeg',
          ),
          ProfileCard(
            name: 'Yumna Kamilah Mahdiyah',
            birthPlace: 'Surabaya',
            birthDate: '15 Mei 2004',
            address: 'Setro Utara 9 No. 7-A',
            phoneNumber: '089696771751',
            email: 'ymnkamilah@gmail.com',
            githubUrl: 'https://github.com/yumnakm',
            educationHistory: 'UPN "Veteran Jawa Timur"\n"SMA Al-Irsyad"',
            awards: '-',
            imagePath: 'images/fotoyumna.png',
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String birthPlace;
  final String birthDate;
  final String address;
  final String phoneNumber;
  final String email;
  final String githubUrl;
  final String educationHistory;
  final String awards;
  final String imagePath;

  const ProfileCard({
    required this.name,
    required this.birthPlace,
    required this.birthDate,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.githubUrl,
    required this.educationHistory,
    required this.awards,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        child: Card(
          color: Color.fromARGB(255, 231, 226, 100),
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(imagePath),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Tempat, Tanggal Lahir:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$birthPlace, $birthDate'),
                SizedBox(height: 5),
                Text(
                  'Alamat:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$address'),
                SizedBox(height: 5),
                Text(
                  'No. HP:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$phoneNumber'),
                SizedBox(height: 5),
                Text(
                  'Email:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                       'mailto:$email'); // Panggil fungsi untuk membuka URL
                  },
                  child: Text(
                    email,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Url Profil GitHub:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // Ubah warna teks menjadi biru
                  ),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    _launchURL(githubUrl); // Panggil fungsi untuk membuka URL
                  },
                  child: Text(
                    githubUrl,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Riwayat Pendidikan:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$educationHistory'),
                SizedBox(height: 5),
                Text(
                  'Penghargaan:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('$awards'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuka URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
