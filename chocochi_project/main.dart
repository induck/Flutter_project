import 'package:flutter/material.dart';
import 'package:untitled5/screen/first_screen.dart';
import 'package:untitled5/screen/the_first_screen.dart';
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
