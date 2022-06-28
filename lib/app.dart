import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee Shopee',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}