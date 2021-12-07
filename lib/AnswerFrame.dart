import 'package:flutter/material.dart';

class FaceFrame extends StatefulWidget {
  const FaceFrame({Key? key}) : super(key: key);

  @override
  _FaceFrameState createState() => _FaceFrameState();
}

var pickColor = Color.fromARGB(255, 153, 102, 51);

class _FaceFrameState extends State<FaceFrame> {
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

            ],
          ),
        ),
      ),
    );
  }
}
