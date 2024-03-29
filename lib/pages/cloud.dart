import 'package:flutter/material.dart';
import 'package:hello_music/items/menu_item.dart';
import 'package:hello_music/items/music_item.dart';
import 'package:hello_music/utils.dart';

class Cloud extends StatefulWidget {
  const Cloud({super.key});

  // This widget is the Cloud page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  CloudState createState() => CloudState();
}

class CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    //double cxtWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
              ),
            ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //资料卡片区域
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                //image:DecorationImage(image:Image.network(src)) ,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(1, 0.5),
                  colors: [Colors.red, Colors.white], // whitish to gray
                  tileMode: TileMode.clamp,
                ),
              ),
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: Card(
                color: Colors.white,
                elevation: 3.0,
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
                              "${Utils.baseUrl}/wyt.jpg",
                              height: 50.0,
                              width: 50.0,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 30.0,
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: const Text(
                                    "降世神通",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        height: 1.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  height: 20.0,
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: const Text("最后的气宗Avatar"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.0,
                            child: OutlinedButton(
                              child: const Text(
                                "开通会员",
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  height: 1.0,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                      ),
                      const Divider(
                        height: 8.0,
                      ),
                      SizedBox(
                        height: 22.0,
                        child: RawMaterialButton(
                          onPressed: () {},
                          padding: const EdgeInsets.all(0.0),
                          child: const Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "黑胶VIP首开低至9元",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                "查看 >",
                                style: TextStyle(
                                  fontSize: 12.0,
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
            RawMaterialButton(
              child: const MenuItem(
                iconData: Icons.folder_open,
                iconColor: Colors.red,
                title: '本地音乐',
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(height: 1.0, indent: 50.0, color: Colors.grey[100]),
            RawMaterialButton(
              child: const MenuItem(
                iconData: Icons.file_download,
                iconColor: Colors.red,
                title: '下载管理',
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(height: 1.0, indent: 50.0, color: Colors.grey[100]),
            RawMaterialButton(
              child: const MenuItem(
                iconData: Icons.tv,
                title: '我的电台',
                iconColor: Colors.red,
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(height: 1.0, indent: 50.0, color: Colors.grey[100]),
            RawMaterialButton(
              child: const MenuItem(
                iconData: Icons.timer,
                title: '最近播放',
                iconColor: Colors.red,
                count: 99,
              ),
              onPressed: () {},
            ),
            Divider(
              height: 1.0,
              color: Colors.grey[200],
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[50]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 32.0,
                    height: 32.0,
                    child: Icon(
                      Icons.list,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                  const Expanded(
                    child: Text("我的歌单", style: TextStyle(fontSize: 12.0)),
                  ),
                  SizedBox(
                    width: 32.0,
                    height: 32.0,
                    child: RawMaterialButton(
                      elevation: 0,
                      highlightElevation: 0,
                      child: const Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 4.0,
                bottom: 4.0,
              ),
              child: const MusicItem(
                imgUrl: "${Utils.baseUrl}zhk.jpg",
                title: "我喜欢的音乐",
                subtitle: "25首",
              ),
            ),
            Divider(height: 1.0, indent: 64.0, color: Colors.grey[100]),
            Container(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
              child: const MusicItem(
                imgUrl: "${Utils.baseUrl}zcx.jpg",
                title: "最平凡的伤感",
                subtitle: "50首",
              ),
            ),
            Divider(height: 1.0, indent: 64.0, color: Colors.grey[100]),
            Container(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
              child: const MusicItem(
                imgUrl: "${Utils.baseUrl}rxq.jpg",
                title: "最简单的快乐",
                subtitle: "66首",
              ),
            ),
            Divider(height: 1.0, indent: 64.0, color: Colors.grey[100]),
            Container(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
              child: const MusicItem(
                imgUrl: "${Utils.baseUrl}zjl.jpg",
                title: "周杰伦",
                subtitle: "103首",
              ),
            ),
            Divider(height: 1.0, indent: 64.0, color: Colors.grey[100]),
            Container(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
              child: const MusicItem(
                imgUrl: "${Utils.baseUrl}ljj.jpg",
                title: "林俊杰",
                subtitle: "112首",
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
