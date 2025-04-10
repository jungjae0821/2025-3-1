import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _bulidContainer() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              Text('BMI CALCULATOR', style: TextStyle(fontSize: 20)),
              Row(
                spacing: 20,
                children: [
                  Expanded(child: _bulidContainer()),
                  Expanded(child: _bulidContainer()),
                ],
              ),
              _bulidContainer(),
              _bulidContainer(),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
