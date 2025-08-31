import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AcademicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Academics",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            NoticeCard(
              title: "Result",
              subtitle: "Academic Year 2025-26",
              date: "Dated: 01-08-2025",
              pdfAssetPath: 'assets/result.pdf',
            ),
            SizedBox(height: 24),
            NoticeCard(
              title: "Timetable",
              subtitle: "Academic Year 2025-26",
              date: "Dated: 01-08-2025",
              pdfAssetPath: 'assets/timetable.pdf',
            ),
            SizedBox(height: 24),
            NoticeCard(
              title: "List of Holidays",
              subtitle: "Academic Year 2025-26",
              date: "Dated: 01-08-2025",
              pdfAssetPath: 'assets/list_of_holidays.pdf',
            ),
            SizedBox(height: 24),
            NoticeCard(
              title: "Syllabus",
              subtitle: "for the Academic Year 2025-26",
              date: "Dated: 01-08-2025",
              pdfAssetPath: 'assets/syllabus.pdf',
            ),
          ],
        ),
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String pdfAssetPath;

  const NoticeCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.pdfAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title${subtitle.isNotEmpty ? ' - $subtitle' : ''}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        SizedBox(height: 6),
        Text(
          date,
          style: TextStyle(color: Colors.grey[700], fontSize: 13),
        ),
        SizedBox(height: 18),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "• View $title",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.5,
                    letterSpacing: 0.1,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.picture_as_pdf, size: 22),
                    label: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "VIEW",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PdfViewerScreen(pdfAssetPath: pdfAssetPath),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700],
                      foregroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(135, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PdfViewerScreen extends StatelessWidget {
  final String pdfAssetPath;

  const PdfViewerScreen({Key? key, required this.pdfAssetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice PDF", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SfPdfViewer.asset(pdfAssetPath),
    );
  }
}
