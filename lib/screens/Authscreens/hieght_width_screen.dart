import 'package:flutter/material.dart';
import 'package:milk_detection/screens/Authscreens/birth_screen.dart';

class HieghtWidthScreen extends StatefulWidget {
  const HieghtWidthScreen({super.key});

  @override
  State<HieghtWidthScreen> createState() => _HieghtWidthScreenState();
}

class _HieghtWidthScreenState extends State<HieghtWidthScreen> {
  int height = 0;
  final maxheight = 20;

  int inch = 0;
  final maxinch = 12;

  int wiegth = 0;
  final maxwiegth = 200;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'This activity level helps you to trailer Your fitness inside',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 120),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Height ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  'Weigth ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            SizedBox(height: 66),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: 165,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(color: Colors.black45),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (height < maxheight) {
                                    height++;
                                  }
                                });
                              },
                              icon: Icon(Icons.keyboard_arrow_up, size: 45),
                            ),
                            // SizedBox(height: 8),
                            Container(
                              height: 55,
                              color: const Color.fromARGB(77, 220, 182, 182),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '$height',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    'ft',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 12),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 0) {
                                    height--;
                                  }
                                });
                              },
                              icon: Icon(Icons.keyboard_arrow_down, size: 45),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Container(
                        height: 165,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: Colors.black45),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (inch < maxinch) {
                                      inch++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.keyboard_arrow_up, size: 45),
                              ),
                              // SizedBox(height: 8),
                              Container(
                                height: 55,
                                color: const Color.fromARGB(77, 220, 182, 182),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '$inch',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // SizedBox(height: 12),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (inch > 0) {
                                      inch--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.keyboard_arrow_down, size: 45),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80),
                  Row(
                    children: [
                      Container(
                        height: 170,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: Colors.black45),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (wiegth < maxwiegth) {
                                      wiegth++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.keyboard_arrow_up, size: 45),
                              ),
                              // SizedBox(height: 8),
                              Container(
                                color: const Color.fromARGB(77, 220, 182, 182),
                                height: 55,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '$wiegth',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'lb',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(height: 12),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (wiegth > 0) {
                                      wiegth--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.keyboard_arrow_down, size: 45),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 120),
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
                MaterialPageRoute(builder: (context) => BirthScreen()),
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
