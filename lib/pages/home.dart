import 'package:flutter/material.dart';
import 'package:hello_music/blocks/name_card.dart';
import 'package:hello_music/blocks/menu_list.dart';
import 'package:hello_music/blocks/music_album.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  // Home({
  //   Key key,
  // }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.library_music),
                onPressed: () {
                  Navigator.pushNamed(context, "Cloud");
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.polymer),
                onPressed: () {
                  Navigator.pushNamed(context, "Friends");
                },
              ),
            ),
            Expanded(
                child: IconButton(
              icon: const Icon(Icons.play_circle_outline),
              onPressed: () {
                Navigator.pushNamed(context, "First");
              },
            ))
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.pool),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 4.0, bottom: 4.0, right: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              //资料卡片区域
              NameCard(),
              MenuList(),
              MusicAlbum(),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
