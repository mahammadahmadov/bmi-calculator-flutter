import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Being overweight increases your risk of developing coronary heart disease, as well as other health conditions.';
    } else if (_bmi > 18.5) {
      return 'You are a healthy weight for your height. But we recommend that you also check your waist measurement.';
    } else {
      return 'You are underweight for your height. It\'s important to aim to keep within your healthy weight range.';
    }
  }
}
