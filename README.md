📱 VIPS-TC Flutter App
A mobile application built using Flutter for students and visitors of Vivekananda Institute of Professional Studies - Technical Campus (VIPS-TC).
This app provides detailed information about admissions, academics, campus facilities, contact info and an interactive user-friendly UI.

✨ Features
🏠 Home Page – Welcoming section with images and introduction to VIPS-TC.

📖 About Section – Institute history, mission, and values.

📝 Admissions – Notices, guidelines, and files (PDF integration).

🎓 Academics – Access to Results, Timetable, List of Holidays, and Syllabus (PDF format).

🏫 Campus Page – Overview of facilities with images (library, labs, canteen, sports, auditorium).

📍 Interactive Contact Section – Clickable phone numbers, email, and maps integration.

💬 Feedback & Support – Form for suggestions, bug reports, and queries.


Home	Academics	Campus
🛠️ Tech Stack
Flutter (Dart)

Syncfusion Flutter PDF Viewer – For viewing PDFs inside the app

URL Launcher – For calling, emails, and Google Maps integration

PhotoView / InteractiveViewer (optional if you add campus map later)

📂 Project Structure
text
lib/
┣ main.dart
┣ home_page.dart
┣ academics_page.dart
┣ admission_page.dart
┣ about_page.dart
┣ campus_page.dart
┣ feedback_page.dart
🚀 Getting Started
Clone the repository

bash
git clone https://github.com/Yashasvi2229/College-website-app.git
cd vips-tc-app
Install dependencies

bash
flutter pub get
Run the app

bash
flutter run
📦 Dependencies
Add these in pubspec.yaml:

text
dependencies:
flutter:
sdk: flutter
url_launcher: ^6.1.14
syncfusion_flutter_pdfviewer: ^21.2.4
photo_view: ^0.16.0
💡 Future Improvements
🔹 Add interactive Campus Map with clickable buildings and routes

🔹 Enable Push Notifications for notices/events

🔹 Secure Student and Admin Login Portal for accessing internal results, attendance, etc.

🔹 Dark Mode support 🌙

👨‍💻 Author
Yashasvi Pandey

📧 Email: yashasvipandey2912@gmail.com

📜 License
This project is open source under the MIT License – feel free to use, modify, and share.