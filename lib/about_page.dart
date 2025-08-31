import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About School of Engineering & Technology',
          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mission and Introduction Texts
            Text(
              "We train the engineers of tomorrow, equipped with the advanced skill-sets & knowledge to lead a technological revolution and bring a change.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, height: 1.5),
            ),
            SizedBox(height: 12),
            Text(
              "We power the next generation with the sound knowledge of AI, ML, Data science, IIoT, Applied Mathematics and Cyber Security so they can soar the skies with limitless possibilities. Our ingenious teaching techniques, core philosophies, and problem-solving approach helps students develop a conquering mindset. Imbibing the vision of Swami Vivekananda, VSE&T empowers the students with the knowledge and encourages them to tap the perfection within. Our focus is to hone intelligence, enhance capabilities, and establish a change through a holistic approach and advance science.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
            SizedBox(height: 18),

            // Optional: Nice campus/student image (replace filename as needed)
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/seet.png', // Place your image in the assets folder & pubspec.yaml
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24),

            // Courses Offered Section
            Text(
              "Courses Offered:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    courseItem('B.Tech – Computer Science & Engineering'),
                    courseItem('B.Tech – Artificial Intelligence and Data Science'),
                    courseItem('B.Tech – Artificial Intelligence and Machine Learning'),
                    courseItem('B.Tech – Industrial Internet of Things'),
                    courseItem('B.Tech – Electronics Engineering (VLSI Design & Technology)'),
                    courseItem('B.Tech – Computer Science & Applied Mathematics'),
                    courseItem('B.Tech – Computer Science & Engineering (Cyber Security)'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget courseItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.red, size: 18),
          SizedBox(width: 10),
          Expanded(child: Text(text, style: TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}
