import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;

  const HeightBox({super.key, required this.onChanged});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          // 타이틀
          Text('Height (CM)', style: TextStyle(fontSize: 18)),
          // 숫자
          Text(
            '${_height.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          Slider(
            year2023: false,
            value: _height,
            min: 50.0,
            max: 300.0,
            activeColor: Color(0xFF6C63FF),
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
              widget.onChanged(_height);
            },
          ),
        ],
      ),
    );
  }
}
