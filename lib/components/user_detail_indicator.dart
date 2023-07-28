import 'package:flutter/material.dart';

class UserDetailIndicator extends StatelessWidget {
  final String title;
  final String value;
  const UserDetailIndicator({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
        ),
      ],
    );
  }
}
