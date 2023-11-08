import 'package:flutter/material.dart';
import 'constant.dart';
import 'result_map.dart';
import 'InputPage.dart';
class ResultPage extends StatelessWidget
{

  String bmiRes ;
  String classification ;
  String descrip ;
  ResultPage(this.bmiRes,  this.classification, this.descrip);
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
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Your Result", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),),
              Expanded(
                flex: 5,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kInActiveCardColour,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[
                        Text(bmiRes,style: TextStyle(fontSize: 20,color: Colors.green),),
                        Text( classification,style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text(descrip,style: KLabelStyle,),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    } ,

                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(15),
                  child: Text("RE-CALCULATE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ))

            ],
          ),
        )
        ),
      );
  }
}

