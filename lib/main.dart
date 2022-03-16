import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:hello_music/pages/friends.dart';
import 'package:hello_music/pages/cloud.dart';
import 'package:hello_music/pages/first.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "Friends": (_) => const Friends(),
        "Musics": (_) => const Friends(),
        "Cloud": (_) => const Cloud(),
        "First": (_) => const First()
      },
      title: 'Hello Music',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(),
    );
  }
}
