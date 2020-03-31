import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double buttonWidth;
  String buttonText;
  Function clickEvent;

  CustomButton({this.buttonText, this.buttonWidth, this.clickEvent});
  

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.buttonWidth,
        margin: EdgeInsets.all(25),
        child: RaisedButton(
          elevation: 10,
          padding: EdgeInsets.all(0.0),
          onPressed: clickEvent,
          color: Colors.blue[50],
          textColor: Colors.blue[900],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 1.0),
                colors: [
                  const Color(0xFF00FFFF),
                  const Color(0xFF0099FF),
                ],
                stops: [0.0, 1.0],
                tileMode: TileMode.repeated,
              ),
              borderRadius: BorderRadius.all(Radius.circular(80.0)),
            ),
            padding: EdgeInsets.fromLTRB(20, 10, 10, 20),

            // TODO: Fix text alignment... It's not centered properly.
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
    );
  }
}
