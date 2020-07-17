import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_button.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({@required this.bmires,@required this.bmire,@required this.bmir});
  final String bmires;
  final String bmire;
  final String bmir;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFFEB1555),
        title: Center(
          child: Text('BMI CALCULATOR',style: TextStyle(color: Color(0xFFEB1555),fontWeight: FontWeight.bold,fontSize: 28.0),),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80.0,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text('YOUR RESULT',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,letterSpacing: 1.2),))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF111328),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0xFFEB1555),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(widget.bmire,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.green,letterSpacing: 1.8),),
                        SizedBox(height: 20.0,),
                        Text(widget.bmires,style: TextStyle(fontSize: 80),),
                        SizedBox(height: 15.0,),
                        Text('Normal BMI range:',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white24,letterSpacing: 0.8),),
                        Text('18.5 - 25kg/m2',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 0.8),),
                        SizedBox(height: 15.0,),
                        Text(widget.bmir,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 0.8,),textAlign: TextAlign.center,),
                        SizedBox(height: 20.0,),
                        Container(
                          width: 160.0,
                          child: FlatButton(
                            color: Colors.green,
                            onPressed: (){
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('your data has been saved',
                                    textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontWeight:
                                    FontWeight.bold),), duration: Duration(seconds: 2), backgroundColor: Colors.red,)
                              );
                            },
                              child: Center(child: Text('SAVE  RESULT',style: TextStyle(fontSize: 18.0,),),)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE  YOUR  BMI',
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
