import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const myHomePageTitle = 'Google Fonts Demo';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Fonts Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyText1:
                  GoogleFonts.aBeeZee(fontSize: 30, color: Colors.deepOrange),
              bodyText2:
                  GoogleFonts.aBeeZee(fontSize: 30, color: Colors.white60))),
      home: const MyHomePage(title: 'Flutter and Dart Cookbook'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        const Text('Yo MTV Raps'),
        Text(
          'Yo MTV Raps',
          style: GoogleFonts.coiny(fontSize: 30, color: Colors.blueGrey),
        ),
        Text(
          'Yo MTV Raps',
          style: GoogleFonts.actor(fontSize: 30, color: Colors.indigo),
        ),
      ]),
    );
  }
}
