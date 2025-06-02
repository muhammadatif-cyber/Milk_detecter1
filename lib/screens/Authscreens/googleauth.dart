import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:milk_detection/screens/Home_screen.dart';

class Googleauth extends StatefulWidget {
  const Googleauth({super.key});

  @override
  State<Googleauth> createState() => _GoogleauthState();
}

class _GoogleauthState extends State<Googleauth> {
  bool isloading = false;

  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();

    if (googleuser == null) return;

    final GoogleSignInAuthentication googleauth =
        await googleuser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleauth.accessToken,
      idToken: googleauth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          signInWithGoogle();
        },
        child: Center(  
          child: Column(
            children: [
              SizedBox(height: 180),
              Text(
                'Lets get started !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                'Start exploring your account ',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
              SizedBox(height: 100),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 3,
                    color: const Color.fromARGB(255, 126, 125, 125),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage(
                                'assets/transparent-google-logo-google-logo-with-colorful-letters-on-black-1710875297222.webp',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
