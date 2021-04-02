import 'package:assign/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white, size: 20.0),
          textTheme: GoogleFonts.muliTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Home());
  }
}
