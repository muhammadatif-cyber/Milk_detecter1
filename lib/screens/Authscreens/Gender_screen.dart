import 'package:flutter/material.dart';
import 'package:milk_detection/screens/Authscreens/hieght_width_screen.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String? selectedgender;
  Widget buildGenderOption(String gender) {
    bool isSelected = selectedgender == gender;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedgender = gender;
        });
      },

      child: Container(
        width: 300,
        height: 50,
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 224, 220, 220),
          // color: isSelected ? Colors.white : Color(0xFFC1BDBD),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.black : Colors.transparent,
            width: isSelected ? 3 : 1,
          ),
        ),

        child: Center(
          child: Text(
            gender,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Select Your Gender ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'This step ensure that your nutrition plan is tailored just for you  ',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 150),
            buildGenderOption('Male'),
            SizedBox(height: 6),
            buildGenderOption('Female'),
            SizedBox(height: 6),
            buildGenderOption('Other'),
            SizedBox(height: 160),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HieghtWidthScreen()),
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
