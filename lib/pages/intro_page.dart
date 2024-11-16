import 'package:flutter/material.dart';
import 'intro_page2.dart'; // Import the IntroPage2

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();

    // Delay for 3 seconds and then navigate to LoginPage
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroPage2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/intro_img.png'), // Ensure correct image path
                fit: BoxFit.cover, // Ensures the image covers the entire screen
              ),
            ),
          ),
        ],
      ),
    );
  }
}
