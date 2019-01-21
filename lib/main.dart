import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:hello_music/pages/friends.dart';
import 'package:hello_music/pages/cloud.dart';
import 'package:hello_music/pages/first.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:<String,WidgetBuilder>{
        "Friends":(_)=>Friends(),
        "Musics":(_)=>Friends(),
        "Cloud":(_)=>Cloud(),
        "First":(_)=>First()
      },
      title: 'Hello Music',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Home(),
    );
  }
}



