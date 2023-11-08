import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:animals_sound/sourse.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Animals sound"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: bodyApp(),
        ),
      ),
    );
  }
}

class bodyApp extends StatefulWidget {
  @override
  _bodyAppState createState() => _bodyAppState();
}

class _bodyAppState extends State<bodyApp> {
  int currentImageIndex = 11;

  String srcImg(int index) => "images/${numAnimalPicture[index]!}";

  String srcSound(int index) => numAnimalSound[index]!;
  
  String srcName(int index) => animalNameList[index]!;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 120,
        ),
        SizedBox(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage(srcImg(currentImageIndex)),
              fit: BoxFit.fill,
            )),
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 100),
          alignment: Alignment.center,
          child: Text(
            srcName(currentImageIndex),
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentImageIndex = (currentImageIndex - 1) % 12;
                    srcImg(currentImageIndex);
                    srcSound(currentImageIndex);
                  });
                },
                child: Icon(Icons.skip_previous_rounded),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    final audioPlayer = AudioPlayer();
                    audioPlayer.play(
                      AssetSource(srcSound(currentImageIndex)),
                    );
                  });
                },
                child: Text("Play"),
                style: ButtonStyle(),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentImageIndex = (currentImageIndex + 1) % 12;
                    srcImg(currentImageIndex);
                    srcSound(currentImageIndex);
                  });
                },
                child: Icon(Icons.skip_next_rounded),
                style: ButtonStyle(),
              )
            ],
          ),
        )
      ],
    );
  }
}
