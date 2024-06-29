import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'main.dart';

class Sign extends StatelessWidget {
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
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(35, 80, 35, 103),
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
                  FirstNameTextField(),
                  SizedBox(height: 15),
                  LastNameTextField(),
                  SizedBox(height: 15),
                  UsernameTextField(),
                  SizedBox(height: 15),
                  PasswordTextField(),
                  SizedBox(height: 15),
                  RePassTextField(),
                  SizedBox(height: 55),
                  Container(
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
                  SizedBox(height: 5),
                  Text(
                    'Or',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xFF222020),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 229,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstNameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'First Name',
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

class LastNameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Last Name',
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

class RePassTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Repeat Password',
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
