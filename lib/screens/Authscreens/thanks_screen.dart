import 'package:flutter/material.dart';
import 'package:milk_detection/screens/Authscreens/googleauth.dart';

class ThanksScreen extends StatefulWidget {
  const ThanksScreen({super.key});

  @override
  State<ThanksScreen> createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 370,
            width: 370,
            decoration: BoxDecoration(),
            child: Image.asset('assets/celebrate.jpg', fit: BoxFit.cover),
          ),
          Text(
            'Thanks you',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            'We appreciate you ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Text(
            'for trusting us',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'We are committed to ensuring that your personal information ramain safe and confidential',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          SizedBox(height: 80),
          Divider(),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Googleauth()),
              );
            },
            child: Text(
              'Next',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ),
      ),
    );
  }
}
