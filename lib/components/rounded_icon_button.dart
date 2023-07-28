import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onUserPressed;
  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onUserPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onUserPressed,
      elevation: 5,
      shape: const CircleBorder(),
      fillColor: Theme.of(context).colorScheme.secondary,
      constraints: const BoxConstraints(minHeight: 60, minWidth: 60),
      child: Icon(icon),
    );
  }
}
