import 'package:flutter/material.dart';
import 'widgets/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for Firebase.initializeApp()
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Initialize the generative model after Firebase is initialized
  final model = FirebaseVertexAI.instance.generativeModel(model: 'gemini-1.5-flash');

  runApp(const MyApp()); // Your root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ), // <-- hanya menutup ThemeData di sini
      home: LandingPage(), // <-- masih di dalam MaterialApp( ... )
    ); // <-- baru menutup MaterialApp
  }
}
