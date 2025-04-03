import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Widget _buildAppName() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAppName(),
              Image.asset('assets/images/bike.png'),
              Text(
                'Get Started with Tracking Your Health!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
                style: TextStyle(color: Color(0xFFC6C3F9), fontSize: 15),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Get Started')),
            ],
          ),
        ),
      ),
    );
  }
}
