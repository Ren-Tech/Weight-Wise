import 'dart:math';

class CalculatorBrain {
  final double height;
  final int weight;
  CalculatorBrain({required this.height, required this.weight});

  double _bmi = 0;

  String calculateUserBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5 || _bmi <= 24.9) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'To achieve a healthier weight, focus on consuming a balanced diet and increasing physical activity. This can be done by reducing portion sizes, choosing nutrient-dense foods, and limiting processed or sugary items. ';
    } else if (_bmi >= 18.5) {
      return 'Weight is generally healthy for your height. However, maintaining a healthy lifestyle is still important. Focus on maintaining a balanced diet, engaging in regular physical activity, and practicing good overall self-care.';
    } else {
      return 'May suggest increasing caloric intake through a well-balanced diet, incorporating strength training exercises to build muscle mass, and addressing any potential medical conditions.';
    }
  }
}
