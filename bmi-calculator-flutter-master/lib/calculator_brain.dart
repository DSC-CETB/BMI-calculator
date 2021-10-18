import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;
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
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
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

  String getAnimation() {
    if (_bmi >= 25) {
      return "assets/skeleton.webp";
    } else if (_bmi >= 18.5) {
      return "assets/ok.webp";
    } else {
      return "assets/worry.webp";
    }
  }
}
