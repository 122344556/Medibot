import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyCustomWidget(),
      ),
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  // double _textPositionX = 30;
  // double _textPositionY = 30;
  // double _text2PositionX = 30;
  // double _text2PositionY = 30;
  // double _text3PositionX = 30;
  // double _text3PositionY = 30;
  // double _text4PositionX = 30;
  // double _text4PositionY = 30;
  // double _text5PositionX = 30;
  // double _text5PositionY = 30;
  // double _containerPositionX = 50;
  // double _containerPositionY = 300;
  // double _imagePositionX = 10;
  // double _imagePositionY = 10;
  // double _image2PositionX = 10;
  // double _image2PositionY = 10;
  // double _container2PositionX = 50;
  // double _container2PositionY = 300;
  // double _image3PositionX = 10;
  // double _image3PositionY = 10;
  // double _container3PositionX = 50;
  // double _container3PositionY = 300;
  // double _image4PositionX = 10;
  // double _image4PositionY = 10;
  // double _container4PositionX = 50;
  // double _container4PositionY = 300;
  // double _image5PositionX = 10;
  // double _image5PositionY = 10;
  // double _container5PositionX = 50;
  // double _container5PositionY = 300;
  // double _image6PositionX = 10;
  // double _image6PositionY = 10;
  // double _container6PositionX = 50;
  // double _container6PositionY = 300;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Teks yang bisa dipindahkan
        Positioned(
          left: 10,
          top: 45,
          child: Text(
            'Halo',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 27,
              color: Color(0xFF0B82D4),
            ),
          ),
        ),
        // Gambar bulat di ujung kanan bawah
        Positioned(
          right: 10,
          bottom: 680,
          child: ClipOval(
            child: Image.asset(
              'assets/frame_85.jpg', // Pastikan path gambar sesuai dengan lokasi gambar Anda
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Kotak pertama
        Positioned(
          left: 23,
          top: 120,
          child: Container(
            width: 350,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.898, -0.859),
                end: Alignment(-0.781, 1),
                colors: <Color>[
                  Color(0xFF9DC5EA),
                  Color(0xFFAAD4FA),
                  Color(0xFFD0E3FF)
                ],
                stops: <double>[0, 0.347, 0.662],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                // Gambar di dalam container yang bisa dipindahkan
                Positioned(
                  left: 10,
                  top: 10,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_20231015_t_1027521.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                      width: 140,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Teks di dalam container
                Positioned(
                  left: 160,
                  top: 55,
                  child: Container(
                    width: 170, // Adjust the width to fit your layout needs
                    child: Text(
                      'Ada yang bisa kubantu ?',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xFF0B82D4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // kotak Kedua
        Positioned(
          left: 20,
          top: 310,
          child: Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFDEDEDE),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                // Gambar di dalam container yang bisa dipindahkan
                Positioned(
                  left: 10,
                  top: 10,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_20231014_t_2025521.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Teks di dalam container
                Positioned(
                  left: 120,
                  top: 15,
                  child: Container(
                    width: 170, // Adjust the width to fit your layout needs
                    child: Text(
                      'Informasi Obat',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  top: 45,
                  child: Container(
                    width: 170, // Adjust the width to fit your layout needs
                    child: Text(
                      'Informasi mengenai obat untuk gangguan mental',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Kotak ketiga
        Positioned(
          left: 23,
          top: 410,
          child: Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFDEDEDE),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                // Gambar di dalam container yang bisa dipindahkan
                Positioned(
                  left: 10,
                  top: 10,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_20231014_t_2049381.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Teks di dalam container
                Positioned(
                  left: 120,
                  top: 15,
                  child: Container(
                    width: 170, // Adjust the width to fit your layout needs
                    child: Text(
                      'Chat With Medinot',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  top: 45,
                  child: Container(
                    width: 200, // Adjust the width to fit your layout needs
                    child: Text(
                      'Mulailah berdialog dengan Medibot yang akan membantumu !!!',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Teks Selanjutnya
        Positioned(
          left: 20,
          top: 560,
          child: Text(
            'Kelebihan Aplikasi :',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color.fromARGB(255, 10, 10, 10),
            ),
          ),
        ),
        //bagian bawah akhir
        Positioned(
          left: 25,
          top: 610,
          child: ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFDEDEDE),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_20231014_t_2225002.png', // Ganti dengan path gambar Anda
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //Teks 1
        Positioned(
          left: 15,
          top: 700,
          child: Container(
            width: 100,
            child: Text(
              'Informasi Terpercaya ',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromARGB(255, 8, 9, 9),
              ),
            ),
          ),
        ),
        // Gambar bawah 2
        Positioned(
          left: 155,
          top: 610,
          child: ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFDEDEDE),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_21.png', // Ganti dengan path gambar Anda
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Teks bawah 2
        Positioned(
          left: 145,
          top: 700,
          child: Container(
            width: 100,
            child: Text(
              'Easy To Use ',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromARGB(255, 8, 9, 9),
              ),
            ),
          ),
        ),
        //Gambar bawh 3
        Positioned(
          left: 280,
          top: 610,
          child: ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFDEDEDE),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 15,
                    top: 15,
                    child: Image.asset(
                      'assets/diseo_sin_ttulo_20231014_t_2216391.png', // Ganti dengan path gambar Anda
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //Teks bawah 3
        Positioned(
          left: 270,
          top: 700,
          child: Container(
            width: 100,
            child: Text(
              'Safe Application ',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromARGB(255, 8, 9, 9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
