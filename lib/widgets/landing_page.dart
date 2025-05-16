import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/landing_page2.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to LandingPage2 after 5 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF4E285), // Yellow
                  Color(0xFF96D8D4), // Aquamarine
                ],
              ),
            ),
          ),

          // Foreground content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo at the bottom
                Image.asset(
                  "assets/landing_page_assets/logo omzetku-01 1.png",
                  width: 154,
                  height: 154,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
