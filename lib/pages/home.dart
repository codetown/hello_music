import 'package:flutter/material.dart';
import 'package:hello_music/items/menu_item.dart';
import 'package:hello_music/items/music_item.dart';

class Home extends StatefulWidget {
  Home({
    Key key,
  }) : super(key: key);

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.library_music),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.polymer),
                onPressed: () {
                  Navigator.pushNamed(context, "Friends");
                },
              ),
            ),
            Expanded(
                child: IconButton(
              icon: Icon(Icons.play_circle_outline),
              onPressed: () {
                Navigator.pushNamed(context, "Friends");
              },
            ))
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.pool),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //资料卡片区域
            Container(
              decoration: BoxDecoration(color: Colors.red),
              padding: EdgeInsets.all(4.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    right: 8.0,
                    left: 8.0,
                    bottom: 4.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Row(children: <Widget>[
                          ClipOval(
                            child: Image.network(
                              "http://192.168.31.208/upload/timg.jpg",
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "降世神通",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        height: 1.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  height: 30.0,
                                  padding: EdgeInsets.only(left: 8.0),
                                ),
                                Container(
                                  child: Text("最后的气宗Avatar"),
                                  height: 20.0,
                                  padding: EdgeInsets.only(left: 8.0),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.0,
                            width: 72.0,
                            child: OutlineButton(
                              padding: EdgeInsets.zero,
                              color: Colors.white,
                              splashColor: Colors.white,
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.red),
                              child: Text(
                                "开通会员",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.normal,
                                  height: 1.0,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                      ),
                      Divider(
                        height: 8.0,
                      ),
                      Container(
                        height: 20.0,
                        child: RawMaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(0.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "黑胶VIP首开低至9元",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                "查看 >",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1.0,
              indent: 50.0,
            ),
            RawMaterialButton(
              child: MenuItem(
                iconData: Icons.folder_open,
                iconColor: Colors.red,
                title: '本地音乐',
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(
              height: 1.0,
              indent: 50.0,
            ),
            RawMaterialButton(
              child: MenuItem(
                iconData: Icons.file_download,
                iconColor: Colors.red,
                title: '下载管理',
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(
              height: 1.0,
              indent: 50.0,
            ),
            RawMaterialButton(
              child: MenuItem(
                iconData: Icons.tv,
                title: '我的电台',
                iconColor: Colors.red,
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(
              height: 1.0,
              indent: 50.0,
            ),
            RawMaterialButton(
              child: MenuItem(
                iconData: Icons.timer,
                title: '最近播放',
                iconColor: Colors.red,
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(height: 1.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: RawMaterialButton(
                      elevation: 0.0,
                      highlightElevation: 0.0,
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    )),
                Expanded(
                  child: Text("我整理的歌单", style: TextStyle(fontSize: 16.0)),
                ),
                SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: RawMaterialButton(
                    elevation: 0,
                    highlightElevation: 0,
                    child: Icon(
                      Icons.settings,
                      color: Colors.grey[300],
                      size: 20.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10.0,
                  height: 30.0,
                ),
              ],
            ),
            Divider(height: 1.0),
            Container(
              padding:EdgeInsets.only(left:8.0,right:8.0,top:4.0,bottom:4.0),
              child: MusicItem(
                imgUrl:"https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
                title:"我最喜欢的音乐",
                subtitle:"我最喜欢的音乐",
              ),
            ),
             Divider(height: 1.0,indent:64.0,),
            Container(
              padding:EdgeInsets.only(left:8.0,right:8.0,top:4.0,bottom:4.0),
              child: MusicItem(
                imgUrl:"https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
                title:"我最喜欢的音乐",
                subtitle:"我最喜欢的音乐",
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
