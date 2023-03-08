
import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  String calculateBMI(){
     _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getValue(){
    if(_bmi >= 25){
      return 'OverWeight';
    }
    else if (_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpetion(){
    if(_bmi >= 25){
      return 'you have higher than normal body weight, Try to exercise more';
    }
    else if (_bmi>18.5){
      return 'you have Normal body weight good job';
    }
    else{
      return 'you have lower than normal body weight.you can eat a bit more';
    }
  }
}