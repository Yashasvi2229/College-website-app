import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(99),
        child: VipsMobileHeader(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // VIPS College Image (PNG)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/vips_campus.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
              ),
            ),
            SizedBox(height: 18),
            // Swami Vivekananda Image (PNG)
            ClipRRect(
              child: Image.asset(
                'assets/vivekananda.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 140,
              ),
            ),
            SizedBox(height: 18),
            // Welcome title
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
                children: [
                  TextSpan(text: 'Welcome to '),
                  TextSpan(
                    text: 'VIPS-TC',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            // Paragraph 1
            Text(
              "Vivekananda Institute of Professional Studies - Technical Campus (VIPS-TC) was founded with the mission of “Man Making, Character Building, Nation Building” inspired by Swami Vivekananda. The institute was established in 2000 to offer quality higher education and nurture future leaders.",
              style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 12),
            // Paragraph 2
            Text(
              "The idea to create VIPS-TC came after Dr. S.C. Vats met Swami Jitatmananda Ji, a renowned educationist who encouraged him to start an institute in Delhi in Swami Vivekananda’s name. Guided by this vision, VIPS-TC continues to uphold the values and teachings of Swami Vivekananda.",
              style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
              textAlign: TextAlign.justify,
            ),
            buildContactSection(context),
          ],
        ),
      ),
    );
  }

  Widget buildContactSection(BuildContext context) {
    final address = "AU- Block (Outer Ring Road), Pitampura, Delhi - 110034";
    final googleMapsUrl =
        "https://www.google.com/maps/search/?api=1&query=AU-Block+Outer+Ring+Road+Pitampura+Delhi+110034";
    final phone1 = "+919319299512";
    final phone2 = "+919319299513";
    final phone3 = "+919319299514";
    final email = "vipsedu@vips.edu";

    return Card(
      margin: EdgeInsets.only(top: 30, bottom: 28),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact header in BLACK
            Text(
              "Contact",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12),
            // Address (Google Maps)
            InkWell(
              onTap: () async {
                final mapsUri = Uri.parse(googleMapsUrl);
                if (await canLaunchUrl(mapsUri)) {
                  await launchUrl(mapsUri, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Could not open Maps")),
                  );
                }
              },
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      address,
                      style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Phone Row 1: +91 9319299512 and 9319299513
            Row(
              children: [
                Icon(Icons.phone, color: Colors.red),
                SizedBox(width: 8),
                InkWell(
                  onTap: () async {
                    final telUri = Uri.parse('tel:$phone1');
                    if (await canLaunchUrl(telUri)) {
                      await launchUrl(telUri, mode: LaunchMode.externalApplication);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Could not place call")),
                      );
                    }
                  },
                  child: Text(
                    "+91 9319299512",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                InkWell(
                  onTap: () async {
                    final telUri = Uri.parse('tel:$phone2');
                    if (await canLaunchUrl(telUri)) {
                      await launchUrl(telUri, mode: LaunchMode.externalApplication);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Could not place call")),
                      );
                    }
                  },
                  child: Text(
                    "9319299513",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Phone Row 2: +91 9319299514
            InkWell(
              onTap: () async {
                final telUri = Uri.parse('tel:$phone3');
                if (await canLaunchUrl(telUri)) {
                  await launchUrl(telUri, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Could not place call")),
                  );
                }
              },
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    "+91 9319299514",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Email
            InkWell(
              onTap: () async {
                final mailUri = Uri.parse('mailto:$email');
                if (await canLaunchUrl(mailUri)) {
                  await launchUrl(mailUri, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Could not open email client")),
                  );
                }
              },
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VipsMobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.red, width: 3),
            bottom: BorderSide(color: Colors.red, width: 3),
          ),
        ),
        height: 99, // Taller for two text lines
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 70,
              child: Image.asset(
                'assets/vips_logo.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vivekananda Institute of Professional Studies - Technical Campus",
                    style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "School of Engineering & Technology",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.black87, size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  // Removed 'Campus' and 'Events' from menuItems and routeMap
  final List<String> menuItems = [
    'Home',
    'About',
    'Admission',
    'Academics',
    'Campus',
    'Feedback'
  ];

  final Map<String, String> routeMap = {
    'Home': '/',
    'About': '/about',
    'Admission': '/admission',
    'Academics': '/academics',
    'Campus': '/campus',
    'Feedback': '/feedback'
  };

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: menuItems.map((item) {
          return ListTile(
            title: Text(item),
            onTap: () {
              Navigator.pop(context);

              final routeName = routeMap[item];
              if (routeName != null &&
                  ModalRoute.of(context)?.settings.name != routeName) {
                Navigator.pushNamed(context, routeName);
              }
            },
          );
        }).toList(),
      ),
    );
  }
}
