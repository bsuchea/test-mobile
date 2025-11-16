import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8F00FF), // Your purple background color
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            // Profile Image
            const CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/profile_pic.png'), // Make sure to add your image here!
            ),
            const SizedBox(height: 16.0),

            // Name
            const Text(
              'AmirHossein Bayat',
              style: TextStyle(
                fontFamily: 'Pacifico', // You'll need to add this font to your project
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),

            // Title
            Text(
              'iOS & Android Developer'.toUpperCase(),
              style: TextStyle(
                fontFamily: 'SourceSansPro', // You'll need to add this font
                fontSize: 18.0,
                color: Colors.white.withOpacity(0.7),
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24.0),

            // Divider (Optional, but good for visual separation)
            SizedBox(
              width: 150.0,
              child: Divider(
                color: Colors.white.withOpacity(0.8),
                thickness: 1.5,
              ),
            ),
            const SizedBox(height: 24.0),


            // Contact Cards
            ContactCard(
              icon: Icons.phone,
              text: '+98 922 505 8169',
              onTap: () {
                // TODO: Implement phone call functionality (e.g., using url_launcher)
                print('Call tapped');
              },
            ),
            ContactCard(
              icon: Icons.email,
              text: 'AmirBayat.dev@gmail.com',
              onTap: () {
                // TODO: Implement email functionality (e.g., using url_launcher)
                print('Email tapped');
              },
            ),
            ContactCard(
              icon: Icons.person, // Or Icons.link, Icons.language, Icons.alternate_email for social media
              text: '@CodeWithflexz',
              onTap: () {
                // TODO: Implement social media link functionality
                print('Social media tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// A custom widget for the contact information cards to reduce code duplication
class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap; // Make onTap optional

  const ContactCard({
    super.key,
    required this.icon,
    required this.text,
    this.onTap, // onTap is now optional
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: InkWell( // Use InkWell for tap effects
        onTap: onTap, // Assign the onTap callback
        borderRadius: BorderRadius.circular(10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF8F00FF), // Your purple icon color
                size: 24.0,
              ),
              const SizedBox(width: 20.0),
              Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF8F00FF), // Your purple text color
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}