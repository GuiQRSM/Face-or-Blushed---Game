import 'package:cara_ou_coroa/AnswerFrame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MenuFrame extends StatefulWidget {
  const MenuFrame({Key? key}) : super(key: key);

  @override
  _MenuFrameState createState() => _MenuFrameState();
}

var pickColor = Color.fromARGB(255, 153, 102, 51);

class _MenuFrameState extends State<MenuFrame> {

 var listNamed = ["face", "blushed"];

void _randomChain (){

  var numberRandom = Random().nextInt(listNamed.length);
  var receiver = listNamed[numberRandom];

  switch (receiver){
    case "face" :
      AssetImage("pics/chain_face.png");
      break;

    case "blushed" :
      AssetImage("pics/chain_blushed.png");
      break;
  }
}


  void _bringFrame (){

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FaceFrame(bringRandon: '$_randomChain()',),
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pickColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 140),
              child: Image.asset(
                "pics/face_or_blushed_01.png",
              ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: _bringFrame,
                  child: Image.asset(
                    "pics/botton_f_o_b.png",
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
