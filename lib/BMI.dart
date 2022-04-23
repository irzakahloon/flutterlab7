import 'bmiresult.dart';
import 'package:flutter/material.dart';

import 'Constant.dart';
import 'reuseableWidget.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double height = 180;
  int selected = 0;
  int age = 19;
  double weight = 55;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          backgroundColor: appbarColor,
          title: const Text(
            'BMI Calculator',
          ),
          centerTitle: true,
        ),
        backgroundColor: backgroundColor,
        body: Center(
          child: SizedBox(
            height: double.infinity,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: ChildW(
                        color: selected == 1 ? Colors.pink : kColor,
                        height: 150,
                        width: 130,
                        child: genderChildren(
                          Icons.male,
                          'MALE',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: ChildW(
                        color: selected == 2 ? Colors.pink : kColor,
                        height: 150,
                        width: 130,
                        child: genderChildren(
                          Icons.female,
                          'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ChildW(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xFFD0D0D5),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${height.round()}',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: 'cm',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              trackHeight: 3.0,
                              thumbColor: Colors.redAccent,
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 12.0),
                              overlayColor: Colors.red.withAlpha(32),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 20.0),
                            ),
                            child: Slider(
                              thumbColor: Colors.pink,
                              min: 0,
                              max: 300,
                              value: height,
                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      width: 290,
                      height: 150,
                      color: kColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChildW(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xFFD0D0D5),
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF4C4F5E),
                                  ),
                                  shape: MaterialStateProperty.resolveWith(
                                    (states) => const CircleBorder(),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF4C4F5E),
                                  ),
                                  shape: MaterialStateProperty.resolveWith(
                                    (states) => const CircleBorder(),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      width: 130,
                      height: 150,
                      color: kColor,
                    ),
                    ChildW(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFFD0D0D5),
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                      (states) => Color(0xFF4C4F5E),
                                    ),
                                    shape: MaterialStateProperty.resolveWith(
                                      (states) => const CircleBorder(),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                      (states) => Color(0xFF4C4F5E),
                                    ),
                                    shape: MaterialStateProperty.resolveWith(
                                      (states) => const CircleBorder(),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        width: 130,
                        height: 150,
                        color: kColor)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        primary: Colors.pink,
                      ),
                      onPressed: () {
                        var bmi = (weight / height / height) * 10000;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BMIResult(
                                    bmi: bmi,
                                  )),
                        );
                      },
                      child: const Text(
                        'CALCULATE',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column genderChildren(var icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(height: 20),
        Text(
          '$text',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
