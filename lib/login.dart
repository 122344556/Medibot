import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
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
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 190, 39, 285),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/diseo_sin_ttulo_20231015_t_1027521.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      UsernameTextField(),
                      SizedBox(height: 15),
                      PasswordTextField(),
                      SizedBox(height: 55),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width - 229) / 2,
                top: 475,
                child: Container(
                  width: 229,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menu()),
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
              Positioned(
                left: (MediaQuery.of(context).size.width - 20) / 2,
                top: 530, // Atur posisi sesuai kebutuhan
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
                left: (MediaQuery.of(context).size.width - 229) / 2,
                top: 555,
                child: Container(
                  width: 229,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
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
                      'Back',
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
        ),
      ),
    );
  }
}

class UsernameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Username',
          labelStyle: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 7, 7, 7),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        style: GoogleFonts.montserrat(
          color: Colors.white,
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 7, 7, 7),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        style: GoogleFonts.montserrat(
          color: Colors.white,
        ),
      ),
    );
  }
}
