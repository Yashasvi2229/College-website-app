import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'admission_page.dart';
import 'academics_page.dart';
import 'campus_page.dart';
import 'feedback_page.dart';
void main() {
  runApp(VipsApp());
}

class VipsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VIPS Mobile',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/admission': (context) => AdmissionPage(),
        '/academics': (context) => AcademicsPage(),
        '/campus': (context) => CampusPage(),
        '/feedback': (context) => FeedbackPage(),
      },
    );
  }


}
