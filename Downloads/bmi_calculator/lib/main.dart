import 'package:flutter/material.dart';
import 'InputPage.dart';

void main () => runApp(BMICalculator());

class BMICalculator extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        //floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.purple),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        //textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}


