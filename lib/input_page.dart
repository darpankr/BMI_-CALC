
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_button.dart';
import 'package:flutter_app/calculate.dart';
import 'package:flutter_app/result_page.dart';
import 'package:flutter_app/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/constants.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selectedGender;
  int height = 160;
  int weight = 60;
  int age = 16;
  var  bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFFEB1555),
        title: Center(
          child: Text('BMI CALCULATOR',style: TextStyle(color: Color(0xFFEB1555),fontWeight: FontWeight.bold,fontSize: 28.0),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Male';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: selectedGender =='Male' ? Color(0xFFEB1555) : Color(0xFF111328),
                          border: Border.all(color: Color(0xFFEB1555),)
                      ),
                      child: Column(
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
                          ),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Female';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: selectedGender =='Female' ? Color(0xFFEB1555) : Color(0xFF111328),
                          border: Border.all(color: Color(0xFFEB1555),)
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'FEMALE',
                            style: KLabelTextStyle,
                          ),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF111328),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Color(0xFFEB1555),)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHTS',
                      style: KLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$height',
                          style: kNumberTextStyle,
                        ),
                        Text('cm'),
                      ],
                    ),
                    Slider(
                      activeColor: Color(0xFFEB1555),
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHTS',
                            style: KLabelTextStyle,
                          ),
                          Text(
                            '$weight',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF111328),
                        borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Color(0xFFEB1555),)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: KLabelTextStyle,
                          ),
                          Text(
                            '$age',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF111328),
                        borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Color(0xFFEB1555),)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              text: 'CALCULATE',
              onTap: () {
                Calculate calc = Calculate(height: height,weight: weight);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ResultPage(bmires: calc.calbmi(), bmire: calc.cond(),bmir: calc.data())
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
