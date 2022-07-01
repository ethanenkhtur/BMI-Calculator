import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final double height;
  final double weight;
  late double bmi;

  String calculateBMI() {
    bmi = weight / (pow(height / 100, 2));
    return bmi.round().toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpreted() {
    if (bmi >= 25) {
      return 'You are overweight. You should consider exercising more.';
    } else if (bmi > 18.5) {
      return 'Your weight is normal. Good job and good luck maintaining that.';
    } else {
      return 'You are underweight. You should eat more!';
    }
  }
}
