import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게시판'),
      ),
      body: Center(
        child: Text('Hello, This page is 2',
          style: TextStyle(
              fontSize: 24.0
          ),
        ),
      ),
    );
  }
}
//B페이지 해결 후 만들기
