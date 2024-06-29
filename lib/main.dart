import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'sign-up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF9DC5EA),
                  Color(0xFFAAD4FA),
                  Color(0xFFD0E3FF)
                ],
              ),
            ),
            // child: Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         height: 20.0,
            //       ),
            //       ElevatedButton(
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => menu()),
            //           );
            //         },
            //         child: Text('Press Me'),
            //       ),
            //     ],
            //   ),
            // ),
          ),
          Positioned(
            top: 80.0, // Sesuaikan posisi top sesuai kebutuhan
            left: 60.0, // Sesuaikan posisi left sesuai kebutuhan
            child: Container(
              width: 270.0, // Sesuaikan lebar container sesuai kebutuhan
              height: 290.0, // Sesuaikan tinggi container sesuai kebutuhan
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/diseo_sin_ttulo_20231015_t_1027521.png'), // Ganti dengan path gambar yang sesuai
                ),
              ),
            ),
          ),
          Positioned(
            left: 140,
            top: 400, // Adjust the position as needed
            child: Container(
              child: Text(
                'MediBot',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                  color: Color(0xFF0B82D4),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 445, // Atur posisi sesuai kebutuhan
            child: Container(
              width: MediaQuery.of(context).size.width -
                  36, // Lebar container sesuai dengan lebar layar
              child: Text(
                'Selamat datang di Medibot, tempat di mana kamu bisa bercakap-cakap dengan bot ramah kami, menemukan dukungan, dan menjelajahi langkah-langkah untuk kesehatan mental yang lebih baik. Mulai percakapanmu hari ini dan temukan jalan menuju keseimbangan dan kebahagiaan.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 65,
            bottom: 150, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 229,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sign()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF0B82D4), // Warna latar belakang tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Bentuk tombol menjadi lingkaran
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 14), // Sesuaikan ukuran vertikal tombol
                ),
                child: Text(
                  'Sign-up',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF), // Warna teks tombol
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 190,
            top: 630, // Atur posisi sesuai kebutuhan
            child: Container(
              width: MediaQuery.of(context).size.width -
                  36, // Lebar container sesuai dengan lebar layar
              child: Text(
                'or',
                textAlign: TextAlign.justify,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 65,
            bottom: 70, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 229,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF0B82D4), // Warna latar belakang tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Bentuk tombol menjadi lingkaran
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 14), // Sesuaikan ukuran vertikal tombol
                ),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF), // Warna teks tombol
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
