import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('next page'),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.share)],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
                child: RaisedButton(
                  child: Text('戻る'),
                    onPressed: () {
                      Navigator.pop(context,'イっていいよ♡');
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
/*  width: double.infinity,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
  Container(
  width: double.infinity,
  child: Text(
  '石田ゆりこ',
  textAlign: TextAlign.start,
  style: TextStyle(
  fontSize: 70,
  foreground: Paint()
  ..style = PaintingStyle.stroke
  ..strokeWidth = 3
  ..color = Colors.blue[700],


  ),
  ),
  ),
  DefaultTextStyle(
  style: TextStyle(
  fontSize: 30,
  color: Colors.purple,
  ),
  child: Text('愛してる')
  ),
  Image.asset('images/yuriko001.jpeg'),
  ],
  ),*/
}