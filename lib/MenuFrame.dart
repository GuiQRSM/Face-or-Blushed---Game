import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuFrame extends StatefulWidget {
  const MenuFrame({Key? key}) : super(key: key);

  @override
  _MenuFrameState createState() => _MenuFrameState();
}

var pickColor = Color.fromARGB(255, 153, 102, 51);

class _MenuFrameState extends State<MenuFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pickColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 18),
              child: Image.asset(
                "pics/face_or_blushed_01.png",
              height: 150,),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 18),
                child: Image.asset(
                    "pics/botton_f_o_b.png",
                height: 100,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
