import 'package:cara_ou_coroa/MenuFrame.dart';
import 'package:flutter/material.dart';

class FaceFrame extends StatefulWidget {

  String bringRandon;
  FaceFrame(this.bringRandon);

  @override
  _FaceFrameState createState() => _FaceFrameState();
}

var pickColor = Color.fromARGB(255, 153, 102, 51);

class _FaceFrameState extends State<FaceFrame> {

  @override
  Widget build(BuildContext context) {

    var imageway;
    if(widget.bringRandon == "face"){
      imageway = "pics/chain_face.png";
    }else{
      imageway = "pics/chain_blushed.png";
    }

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
                    imageway
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
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
