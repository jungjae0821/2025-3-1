import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'circle_icon_button.dart';

class InDeContainer extends StatelessWidget {
  final String title;
  final int value;

  const InDeContainer({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          Text('Age', style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleIconButton(
                  onTap: ,
                  icon: LucideIcons.minus),
              CircleIconButton(
                  onTap: ,
                  icon: LucideIcons.plus),
            ],
          ),
        ],
      ),
    );
  }
}
