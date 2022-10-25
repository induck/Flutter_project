import 'package:flutter/material.dart';
import 'package:index/screen/first_screen.dart';
import 'package:index/screen/the_first_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'chocochi',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
