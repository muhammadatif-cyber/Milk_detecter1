import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:milk_detection/screens/Authscreens/Gender_screen.dart';
import 'package:milk_detection/screens/Home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), checkUser);
  }

  void checkUser() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      print('user login :');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      print('user not login :');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GenderScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Annimated Text
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(seconds: 2),
              builder: (context, value, child) {
                return Transform.scale(scale: value, child: child);
              },
              child: Text(
                'Wellcome to Milk Detecter ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
