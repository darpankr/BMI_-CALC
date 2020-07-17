import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text, this.onTap});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),border: Border.all(color: Color(0xFFEB1555),)),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}