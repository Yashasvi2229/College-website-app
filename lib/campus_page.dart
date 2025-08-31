import 'package:flutter/material.dart';

class CampusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Campus",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -- First campus image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/campus1.png',   // First campus image file
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 14),
            // -- Second campus image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/campus2.png',   // Second campus image file
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 18),
            // --- Campus overview and features ---
            Text(
              "VIPS-TC Campus Overview",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            SizedBox(height: 10),
            Text(
              "Spread across 5 acres of lush greenery in Pitampura, New Delhi, the VIPS-TC campus offers an eco-friendly and modern environment with centrally air-conditioned buildings, high-speed Wi-Fi, and state-of-the-art infrastructure. The campus features well-lit, smart classrooms; advanced labs; a vast library; comfortable auditoriums; and vibrant spaces for learning and collaboration.",
              style: TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
            ),
            SizedBox(height: 18),
            Text(
              "Key Campus Features:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(height: 12),
            FacilityItem(text: "• Ultra-modern classrooms with AC, smart boards, and projectors"),
            FacilityItem(text: "• Fully Wi-Fi enabled campus and cloud-powered LMS"),
            FacilityItem(text: "• Four well-stocked, air-conditioned libraries (over 76,000 books)"),
            FacilityItem(text: "• State-of-the-art computer, media, and engineering labs"),
            FacilityItem(text: "• Auditorium and seminar halls with advanced AV systems"),
            FacilityItem(text: "• Spacious multipurpose halls for events and seminars"),
            FacilityItem(text: "• Sports facilities for cricket, volleyball, basketball, TT, and more"),
            FacilityItem(text: "• On-campus medical center and fitness gym"),
            FacilityItem(text: "• Canteen and digital cafe with hygienic, affordable meals"),
            SizedBox(height: 18),
            Text(
              "Location & Access:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(height: 8),
            Text(
              "Address: AU Block (Outer Ring Road), Pitampura, New Delhi - 110034",
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
            SizedBox(height: 12),
            Text(
              "The campus is centrally located, just 20 km from IGI Airport and close to three metro stations, making it easily accessible for students across Delhi.",
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class FacilityItem extends StatelessWidget {
  final String text;
  const FacilityItem({required this.text});
  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.5),
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
      );
}
