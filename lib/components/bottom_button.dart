import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function() onUserpRessed;
  const BottomButton({
    super.key,
    required this.onUserpRessed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: TextButton(
        onPressed: onUserpRessed,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(5, 5), color: Colors.black54, blurRadius: 5)
            ],
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text('Calculate', style: kSizeDefaultWhiteBold),
          ),
        ),
      ),
    );
  }
}
