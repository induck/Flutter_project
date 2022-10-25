import 'package:flutter/material.dart';
import 'dart:async';
import 'package:index/screen/second_screen.dart';
import 'package:index/screen/detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:index/screen/loginscreen.dart';

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
      };
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
            Text('SplashScreen 로그인 구현', style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
    );
  }
}
