import 'package:flutter/material.dart';
import 'package:index/screen/detail_screen_1.dart';


class MessageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
            "메세지 목록"
        ),
      ),
    );
  }
}


class VoiceServerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
            "보이스 룸"
        ),
      ),
    );
  }
}

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


class ListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
            "단어 리스트"
        ),
      ),
    );
  }
}

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
            "마이홈페이지"
        ),
      ),
    );
  }
}
