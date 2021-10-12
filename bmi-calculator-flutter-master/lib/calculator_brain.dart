import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow((height / 100), 2);
    //_bmi.toStringAsFixed(1);
    print("bmi is:");
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi >= 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Dharti pe bojh";
    } else if (_bmi >= 18.5) {
      return "Noicee";
    } else {
      return "Thoda sa sarir pe bhi dhyan dedo";
    }
  }
}
