import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  /*
  if (bmi < 18.5) {
    debugPrint('저체중');
  } else if (18.5 <= bmi && bmi < 23) {
    debugPrint('정상 체중');
  } else if (23 <= bmi && bmi < 25) {
    debugPrint('비만 전단계');
  } else if (25 <= bmi && bmi < 30) {
    debugPrint('1단계 비만');
  } else if (30 <= bmi && bmi < 35) {
    debugPrint('2단계 비만');
  } else {
    debugPrint('3단계 비만');
  }
  */

  @override
  Widget build(BuildContext context) {
    String bmiString = bmi < 10.0 ? '0$bmi' : bmi.toString();

    String bmiType = '';

    if (bmi < 18.5) {
      bmiType = '저체중';

      bmiType = '저체중';
    } else if (18.5 <= bmi && bmi < 23) {
      bmiType = '정상 체중';
    } else if (23 <= bmi && bmi < 25) {
      bmiType = '비만 전단계';
    } else if (25 <= bmi && bmi < 30) {
      bmiType = '1단계 비만';
    } else if (30 <= bmi && bmi < 35) {
      bmiType = '2단계 비만';
    } else {
      bmiType = '3단계 비만';
    }

    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF4F3FF),
        title: Text('BMI Result'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: WhiteBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BMI 결과값
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Color(0xFF6C63FF)),
                    children: [
                      TextSpan(
                        text: bmiString.substring(0, 2),
                        style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: bmiString.substring(2),
                        style: TextStyle(fontSize: 45),
                      ),
                    ],
                  ),
                ),
                Text(
                  bmiType,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
