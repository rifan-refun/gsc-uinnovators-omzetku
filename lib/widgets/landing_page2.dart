import 'package:flutter/material.dart';
import 'dart:async';
import 'info_1.dart';

class LandingPage2 extends StatefulWidget {
  const LandingPage2({super.key});

  @override
  State<LandingPage2> createState() => LandingPage2State();
}

class LandingPage2State extends State<LandingPage2> {
  @override
  void initState() {
    super.initState();
    // Jalankan navigasi otomatis setelah 5 detik
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  // Definisi custom PageRoute dengan durasi transisi 5 detik
  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 3),
      pageBuilder: (context, animation, secondaryAnimation) => const Info1(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Contoh fade transition
        return FadeTransition(opacity: animation, child: child);
      },
    );
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
                  "assets/landing_page_assets/logo omzetku-02-02 2.png",
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
