import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appwidget {
  static TextStyle boldTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headlineTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle lightlineTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 15.0,
      fontWeight: FontWeight.w800,
      color: const Color.fromARGB(96, 0, 0, 0),
    );
  }

  static TextStyle semiBoldTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle addtocartTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle loginTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle addTextFieldStyle() {
    return GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
