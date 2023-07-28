import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData icon;
  final String cardTitle;
  final Color iconColor;
  const CardContent({
    super.key,
    required this.icon,
    required this.cardTitle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50.0,
            color: iconColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            cardTitle,
            style: TextStyle(color: iconColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
