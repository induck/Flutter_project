import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project3/screen/second_screen.dart';
import 'package:project3/screen/detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project3/screen/loginscreen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> checkLogin() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    return isLogin;
  }

  void moveScreen() async {
    await checkLogin().then((isLogin) {
      if (isLogin) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
            (context) => SecondScreen()));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
      }
    });
  }


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      moveScreen();
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://i.postimg.cc/cJGVbF0x/1583463522726.png',),
          ],
        ),
      ),
    );
  }
}
