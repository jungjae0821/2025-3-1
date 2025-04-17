import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const CircleIconButton({super.key, required this.icon, required this.onTap});

  Widget firstWay() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFF081854),
      ),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }

  Widget secondWay() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF081854),
        ),
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }

  Widget thirdWay() {
    return IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(shape: CircleBorder()),
      icon: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF081854),
        ),
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
