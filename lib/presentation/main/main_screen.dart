import 'package:daelim_2025/presentation/main/widgets/in_de_container.dart';
import 'package:flutter/material.dart';

import '../common/widgets/white_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              // #region 나이, 몸무게 입력
              Row(
                spacing: 20,
                children: [
                  Expanded(child: InDeContainer()),
                  Expanded(child: InDeContainer()),
                ],
              ),
              WhiteBox(padding: EdgeInsets.all(18), child: SizedBox.shrink()),
              WhiteBox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),
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
