import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:milk_detection/screens/Authscreens/thanks_screen.dart';

class BirthScreen extends StatefulWidget {
  const BirthScreen({super.key});

  @override
  State<BirthScreen> createState() => _BirthScreenState();
}

class _BirthScreenState extends State<BirthScreen> {
  int date = 1;
  final maxdate = 31;
  //this is for birth year ;
  int year = 1920;
  final minyear = 1900;
  final int maxyear = DateTime.now().year;
  // this function is for the month incerement and decrement ;

  int currentMonth = DateTime.now().month;

  void incrementMonth() {
    setState(() {
      currentMonth =
          (currentMonth % 12) +
          1; //this is for the january to december like this type 1 , 2 , 3 , 4//
    });
  }

  void decrementMonth() {
    setState(() {
      currentMonth =
          (currentMonth - 2 + 12) % 12 +
          1; // this is for the december to the january like 9 , 8 , 7 , ///
    });
  }

  String getMonthName(int month) {
    return DateFormat.MMMM().format(DateTime(0, month));
  }

  @override
  Widget build(BuildContext context) {
    String monthName = getMonthName(currentMonth);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'What is your birth date? ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Text(
            'This activity is so that you will be advised accordingly! ',
            style: TextStyle(fontSize: 17, color: Colors.black54),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 66),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            incrementMonth();
                          },
                          icon: Icon(Icons.keyboard_arrow_up, size: 45),
                        ),
                        // SizedBox(height: 8),
                        Container(
                          color: const Color.fromARGB(77, 220, 182, 182),
                          height: 55,
                          child: Center(
                            child: Text(
                              monthName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 9),
                        IconButton(
                          onPressed: () {
                            decrementMonth();
                          },
                          icon: Icon(Icons.keyboard_arrow_down, size: 45),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 160,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (date < maxdate) {
                              date++;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 45),
                      ),
                      // SizedBox(height: 10),
                      Container(
                        height: 55,
                        color: const Color.fromARGB(77, 220, 182, 182),
                        child: Center(
                          child: Text(
                            '$date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (date > 1) {
                              date--;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_down, size: 45),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 160,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (year < maxyear) {
                              year++;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 45),
                      ),
                      // SizedBox(height: 10),
                      Container(
                        height: 55,
                        color: const Color.fromARGB(77, 220, 182, 182),
                        child: Center(
                          child: Text(
                            '$year',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (year > minyear) {
                              year--;
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
          SizedBox(height: 180),
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
                MaterialPageRoute(builder: (context) => ThanksScreen()),
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
