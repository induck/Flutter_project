import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BANTO',
      
      home: Grade(),
    );
  }
}


class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("BANTO"),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Column(
          children: <Widget>[
            Divider(
              height:60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 10.0,
            ),
            Text('NAME',
                style:
              TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
              ),),
            Text('BANTO',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}

