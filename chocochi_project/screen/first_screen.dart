import 'package:flutter/material.dart';
import 'package:project3/screen/second_screen.dart';
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0,130,0,0),
                child: (Text(
                    'CHOCOCHI',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )
                )),
              ),
              Container(
                child: (
                    Column(
                      children: <Widget>[
                        Container(
                            width:380,
                            margin: EdgeInsets.fromLTRB(0,40,0,20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ID를 입력해주세요',
                              ),
                            )
                        ),

                        Container(
                            width:380,
                            margin: EdgeInsets.fromLTRB(0,0,0,20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password를 입력해주세요',
                              ),
                            )
                        ),

                        Container(
                          width: 380,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondScreen()
                              ));
                            },
                            style:ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    )
                                )
                            ),
                            child: Text('로그인', ),
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
