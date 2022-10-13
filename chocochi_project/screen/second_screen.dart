import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
            UserAccountsDrawerHeader(
              accountName: Text("인혁"),
              accountEmail: Text("rucy0199@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/pig.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/pig2.jpg'),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){

              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
            sectionAnswer: '안녕하세요항아아아'
        ),
      ),
    );
  }
}

class Section extends StatelessWidget{
  final String sectionAnswer;

  Section({
    required this.sectionAnswer
  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(sectionAnswer),
      ),
    );
  }
}
