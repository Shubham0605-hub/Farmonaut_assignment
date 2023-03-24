import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_farm/screens/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBBuOfU7VHRsiTDYloH4Z4iZyov_6DMfao",
          authDomain: "testfarm-38406.firebaseapp.com",
          projectId: "testfarm-38406",
          storageBucket: "testfarm-38406.appspot.com",
          messagingSenderId: "618456884543",
          appId: "1:618456884543:web:e7654254194ecabd745f8a"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF01B0B1),
          primaryColor: const Color(0xFF01736C)),
      home: const LandingScreen(),
    );
  }
}
