import 'package:flutter/material.dart';
import 'package:index/screen/detail_screen.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: MaterialApp(
          home: NavigationExample(),
        ),
      ),
    );
  }
}


class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.question_answer),
            icon: Icon(Icons.question_answer_outlined),
            label: 'message',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.cast_connected),
            icon: Icon(Icons.cast_connected_outlined),
            label: 'Voice Server',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.article),
            icon: Icon(Icons.article_outlined),
            label: 'List',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.perm_identity),
            label: 'My',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: MessageScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: VoiceServerScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: HomeScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: ListScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child:MyScreen(),
        ),
      ][currentPageIndex],
    );
  }
}



