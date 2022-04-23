import 'package:flutter/material.dart';
import 'Constant.dart';

class BMIResult extends StatelessWidget {
  BMIResult({Key? key, required this.bmi}) : super(key: key);

  String status = '';
  double bmi = 0;

  bmiStatus() {
    if (bmi < 18.5) {
      status = 'UnderWeight';
      return;
    }
    if (bmi < 25 && bmi >= 18.5) {
      status = 'Normal';
      return;
    }
    if (bmi >= 25 && bmi <= 29.9) {
      status = 'OverWeight';
      return;
    }
    if (bmi > 30) {
      status = 'Obese';
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    bmiStatus();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: double.infinity,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFF1D1E33),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                '${status}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${bmi.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'You body is ${status}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      primary: Colors.pink,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'RE-CALCULATE YOUR BMI',
                      style: TextStyle(
                        fontSize: 16,
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
    );
  }
}
