import 'package:flutter/material.dart';
import 'package:project3/screen/detail_screen_1.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('첫 게시물 입니다.'),
            leading: Image.network('https://i.postimg.cc/cJGVbF0x/1583463522726.png'),
            onTap:(){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => DetailScreen(),
                )
              );
            },
          ),
          ListTile(
            title: Text('첫 게시물 입니다.'),
            leading: Image.network('https://i.postimg.cc/cJGVbF0x/1583463522726.png'),
          ),
          ListTile(
            title: Text('첫 게시물 입니다.'),
            leading: Image.network('https://i.postimg.cc/cJGVbF0x/1583463522726.png'),
          ),
          ListTile(
            title: Text('첫 게시물 입니다.'),
            leading: Image.network('https://i.postimg.cc/cJGVbF0x/1583463522726.png'),
          ),
        ],
      ),
    );
  }
}
