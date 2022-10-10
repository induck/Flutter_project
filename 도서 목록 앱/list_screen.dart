import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

class ListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: <Widget>[
          BookTile(
            title:'패키지 없이 R로 구현하는 심층 강화학습1',
            subtitle:'손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
            description:
                '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지'
                '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데,'
                '딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여'
                '강화학습 작동원리를 이해한다.',
            image:
              'https://i.postimg.cc/cJGVbF0x/1583463522726.png'
          ),

          BookTile(
              title:'패키지 없이 R로 구현하는 심층 강화학습2',
              subtitle:'손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
              description:
              '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지'
                  '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데,'
                  '딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여'
                  '강화학습 작동원리를 이해한다.',
              image:
              'https://i.postimg.cc/FKM3cn54/22021046.jpg'
          ),

          BookTile(
              title:'패키지 없이 R로 구현하는 심층 강화학습3',
              subtitle:'손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
              description:
              '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지'
                  '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데,'
                  '딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여'
                  '강화학습 작동원리를 이해한다.',
              image:
              'https://i.postimg.cc/qvYjbwVm/1662392859733-1.jpg'
          ),

          BookTile(
              title:'패키지 없이 R로 구현하는 심층 강화학습4',
              subtitle:'손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
              description:
              '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지'
                  '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데,'
                  '딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여'
                  '강화학습 작동원리를 이해한다.',
              image:
              'https://i.postimg.cc/fTS37fCW/image.jpg'
          ),

          BookTile(
              title:'패키지 없이 R로 구현하는 심층 강화학습5',
              subtitle:'손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
              description:
              '머신러닝과 강화학습의 기본 개념부터 심층 강화학습의 알고리즘과 발전방향까지'
                  '본 서는 강화학습의 기본 요소와 작동 원리에 대해 상세히 다루는데,'
                  '딥러닝 프레임 워크를 사용하는 것이 아닌, R base code로 강화학습을 구현하여'
                  '강화학습 작동원리를 이해한다.',
              image:
              'https://i.postimg.cc/sX8j1btY/export202209222252238380.jpg'
          ),

        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget{
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  @override
  Widget build(BuildContext context){
    return ListTile(
      title:Text(title),
      leading: Image.network(image),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              subtitle: subtitle,
              description: description,
              image: image,
            ),
          )
        );
      },
    );
  }
}
