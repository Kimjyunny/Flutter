import 'package:flutter/material.dart';
import 'package:push_named/screen_a.dart';
import 'package:push_named/screen_b.dart';
import 'package:push_named/screen_c.dart'; //파일명이 대문자가 안됨, 연결이 안됨


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: MyPage(),
      initialRoute:'/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()  //파일명으로 통일시키려고 했으나 _는 클래스 제목으로 넣을 수 없음
      },
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게시판'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
         IconButton(
           icon: Icon(Icons.star),
           onPressed: () {
             print('star is clicked');
           },
         ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print('Account circle is clicked');
            },
          ),
        ],
      ),
      body:
        HomeBody(),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Snack Bar Message'),
            onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Snack Bar!'),
                      duration: Duration(seconds: 3),
                    ),
                );
              },
            ),
          ],
        ),
    ),
    );
  }
}



class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Page 1'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()),);
        },
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Text('This page is 1',
        style: TextStyle(
          fontSize: 20.0,
        ),
        ),
      ),
    );
  }
}

