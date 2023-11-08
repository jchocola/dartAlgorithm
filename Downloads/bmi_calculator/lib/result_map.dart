
import 'constant.dart';
/// g - gender
/// h - height
/// w - weight
/// a - age



class CalculatorBrain {
  CalculatorBrain(this.h, this.w ,this.a );
  int  h;
  int w;
  int  a;
  double bmi = 0;
  String res = '';
  String description = "YOU ARE SO STUPID";
  String classification = '';
  void ftCalculateBMI()
  {
    double hi = h /100;
     res = (w / (hi * hi)).toStringAsFixed(2);
     bmi = double.parse(res);

      if (bmi < 16) classification = "Severe Thinness";
      if (bmi >= 16 && bmi < 17) classification = "Moderate Thinness";
      if (bmi >= 17 && bmi < 18.5) classification = "Mild Thinness";
      if (bmi >= 18.5 && bmi < 25) classification = "Normal";
      if (bmi >= 25 && bmi < 30) classification = "Overweight";
      if (bmi >= 30 && bmi < 35) classification = "Obese Class I";
      if (bmi >= 35 && bmi < 40) classification = "Obese Class II";
      if (bmi >= 40) classification = "Obese Class III";
    }
  }
