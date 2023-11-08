import 'package:flutter/material.dart';
import 'dart:math';
void main ()
{
  return runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Aks me everythink",style: TextStyle(fontSize: 30),
        ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: myWidget(),
        ),
      ),
    ));
  }
}

class myWidget extends StatefulWidget
{
  @override
  _myWidgetState createState()=>_myWidgetState();
}
class _myWidgetState extends State<myWidget>
{
  int i = 1;
  void ftGenerate()
  {
    i = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context)
  {
    return TextButton(onPressed: (){
      setState(() {
        ftGenerate();
      });
    },
        child: Image.asset("images/ball$i.png"),);
  }
}