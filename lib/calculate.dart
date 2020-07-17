

import 'dart:math';

class Calculate
{
  Calculate({this.height,this.weight});
  final int height;
  final int weight;
  double bmi;

  String calbmi() {
    bmi = weight / pow(height/100 , 2);
    return bmi.toStringAsFixed(2);
  }

  String cond()
  {
    if (bmi > 30)
    return 'OBESITY';
  else if (bmi > 25)
  return 'Overweight';
  else if (bmi > 18.5)
    return 'NORMAL';
    else
    return 'UNDERWEIGHT';
  }

  String data()
  {
    if (bmi > 30)
      return 'You have much more weight than that of a normal person. Consult a doctor immediately!!';
    else if (bmi > 25)
      return 'Your body weight is more than normal.Please maintain a healthy diet.';
    else if (bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'Your body weight is less than normal. live a healthy life.';
  }
}
