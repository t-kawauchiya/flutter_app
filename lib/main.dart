import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(MyApp());
}

final items = List<String>.generate(1000, (i) => "Item $i");

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.ondemand_video_sharp),
          title: const Text('石田ゆりこ大好きチャンネル！'),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //TODO
                },
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: <Widget>[
            Padding(
              // channel info
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          'https://imgc.eximg.jp/i=https%253A%252F%252Fs.eximg.jp%252Fexnews%252Ffeed%252FMenscyzo%252FMenscyzo_201611_post_13046_d6fe_1.jpg,zoom=600,quality=70,type=jpg',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '石田ゆりこ大好きチャンネル',
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'チャンネル登録',
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text('  登録者数 248.5京人'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 40,
                  child: FlatButton(
                    color: Colors.white,
                    child: const Text('ホーム'),
                    shape: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: FlatButton(
                    color: Colors.white,
                    child: const Text('動画'),
                    shape: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 135,
                  height: 40,
                  child: FlatButton(
                    color: Colors.white,
                    child: const Text('再生リスト'),
                    shape: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 40,
                  child: FlatButton(
                      shape: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                      )),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage('yurikooooo')),
                      );
                    },
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                      'https://imgc.eximg.jp/i=https%253A%252F%252Fs.eximg.jp%252Fexnews%252Ffeed%252FMenscyzo%252FMenscyzo_201611_post_13046_d6fe_1.jpg,zoom=600,quality=70,type=jpg',
                    ),
                    title: Column(
                      children: [
                        Text('石田ゆり子に"ギャップ萌え"する男性続出中！…'),
                        Row(
                          children: [
                            Text('石田ゆりこ大好…',style: TextStyle(fontSize: 13,color: Colors.black54),),
                            Text('  267京回再生',style: TextStyle(fontSize: 13,color: Colors.black54),),

                          ],
                        )
                      ],),

                    trailing:Icon(Icons.more_vert),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
