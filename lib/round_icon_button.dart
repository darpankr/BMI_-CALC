import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 54.0, height: 54.0),
      shape: CircleBorder(),
      fillColor: Color(0xFFEB1555)
    );
  }
}

/*Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'MALE',
                        style: KLabelTextStyle,
                      )
                    ],
                  ),

 */