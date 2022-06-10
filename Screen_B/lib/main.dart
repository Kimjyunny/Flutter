import 'package:flutter/material.dart';
import 'package:push_named/flutter_homework_1st;

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게시판'),
      ),
      body: Center(
        child: Text('Hello, This page is 1',
        style: TextStyle(
          fontSize: 24.0,
        ),
        ),
         child: RaisedButton( //child속성을 두번 가지려면 어떻게 해야하는가?
            child: Text('Back'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => MyApp())); //메인 페이지로 어떻게 연결시키는가?
            }),
      ),
    );
  }
}



