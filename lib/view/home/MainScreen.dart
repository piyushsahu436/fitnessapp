// ignore_for_file: file_names, prefer_const_constructors
import 'package:fitness/view/home/result.dart';

import 'package:flutter/material.dart';
import 'enum.dart';
import 'result.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.unSelected;
  int sliderValue = 0;
  int weight = 40;
  int Age = 10;
  // int height=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: selectedCard == Gender.male
                              ? Colors.blue
                              : Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Icon(
                              Icons.abc_rounded,
                              color: Colors.white,
                              size: 95,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.female;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.female
                              ? Colors.blue
                              : Colors.black,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Icon(
                              Icons.abc_rounded,
                              color: Colors.white,
                              size: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  sliderValue.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 70),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue < 250) {
                                        sliderValue++;
                                      }
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.plus_one,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Slider(
                                  value: sliderValue.toDouble(),
                                  min: 0.0,
                                  max: 250.0,
                                  onChanged: (value) {
                                    setState(() {
                                      sliderValue = value.toInt();
                                    });
                                  },
                                  inactiveColor: Colors.white,
                                  activeColor: Colors.blue,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue > 0) sliderValue--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.minimize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.plus_one,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.minimize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$Age',
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.plus_one,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (Age > 0) Age--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: Icon(
                                      Icons.minimize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                        height: sliderValue,
                        weight: weight,
                        age: Age,
                      )),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.blue,
                // ignore: prefer_const_constructors
                child: Center(
                  // ignore: prefer_const_constructors
                  child: Text(
                    'CALCULATE',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}