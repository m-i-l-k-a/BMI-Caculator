import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 18, color: Color(0XFF8D8E98)),
        )
      ],
    );
  }
}