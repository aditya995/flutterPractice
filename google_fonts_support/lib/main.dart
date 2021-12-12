import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var fontSize = 40.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: RichText(
              text: TextSpan(
            text: 'Data',
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: 'Data',
                  style: GoogleFonts.robotoMono(
                      color: Colors.amber,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                text: 'Data',
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Data',
                style: GoogleFonts.lobster(
                    color: Colors.teal,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Data',
                style: GoogleFonts.comfortaa(
                    color: Colors.lightBlue,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
