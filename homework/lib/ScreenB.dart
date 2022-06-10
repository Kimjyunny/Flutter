import 'package:flutter/material.dart';

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
      ),
    );
  }
}


