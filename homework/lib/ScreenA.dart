import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게시판'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.pink,
                child: Text('Page 1',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/b');
                }),

            RaisedButton(
                color: Colors.pink,
                child: Text('Page 1',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                })
          ],
        ),
      ),
    );
  }
}
