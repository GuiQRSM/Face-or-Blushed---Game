import 'package:cara_ou_coroa/MenuFrame.dart';
import 'package:flutter/material.dart';

class FaceFrame extends StatefulWidget {
  const FaceFrame({Key? key}) : super(key: key);

  @override
  _FaceFrameState createState() => _FaceFrameState();
}

var pickColor = Color.fromARGB(255, 153, 102, 51);

class _FaceFrameState extends State<FaceFrame> {

  void _callMenuFrame (){

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MenuFrame(),
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
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 90),
                child: Image.asset(
                    "pics/chain_face.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: _callMenuFrame,
                  child:  Image.asset(
                    "pics/botton_f_o_b_02.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
