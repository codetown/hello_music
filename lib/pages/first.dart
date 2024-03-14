import 'package:flutter/material.dart';

import 'package:hello_music/items/music_bill.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hello_music/utils.dart';

class First extends StatefulWidget {
  const First({super.key});

  // This widget is the First page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  FirstState createState() => FirstState();
}

class FirstState extends State<First> {
  List<dynamic> swipers = [];
  List<dynamic> modules = [];
  @override
  Widget build(BuildContext context) {
    double cxtWidth = MediaQuery.of(context).size.width;
    double almWidth = (cxtWidth - 64.00) / 3.00;
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
              margin: const EdgeInsets.only(bottom: 12.0),
              width: cxtWidth,
              height: cxtWidth * 0.382,
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
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  aspectRatio: 2.3,
                ),
                items: [
                  for (int i = 0; i < 6; ++i)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.network(
                          "https://gitee.com/codetown/my-win/raw/master/assets/codedata/music/ad0${i + 1}.jpg",
                          width: cxtWidth - 32,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          color: Colors.red,
                          child: IconButton(
                            icon: const Icon(Icons.live_tv),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0, height: 16.0),
                      const Text("私人FM")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          color: Colors.red,
                          child: IconButton(
                            icon: const Icon(Icons.perm_contact_calendar),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0, height: 16.0),
                      const Text("每日推荐")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          color: Colors.red,
                          child: IconButton(
                            icon: const Icon(Icons.satellite),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0, height: 16.0),
                      const Text("歌单")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          color: Colors.red,
                          child: IconButton(
                            icon: const Icon(Icons.graphic_eq),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0, height: 16.0),
                      const Text("排行榜")
                    ],
                  ),
                ),
              ],
            ),
            Divider(height: 24.0, color: Colors.grey[100]),
            Container(
              alignment: Alignment.centerLeft,
              width: cxtWidth,
              //height: 32.0,
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: const Text.rich(
                TextSpan(
                  text: "推荐歌单   ",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: ">",
                      style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),

            //歌单列表
            Container(
              width: cxtWidth,
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: const BoxDecoration(color: Colors.white),
              child: Wrap(
                spacing: 16.0,
                children: <Widget>[
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}zjl.jpg",
                    title: "窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}ljj.jpg",
                    title: "确认过眼神你遇上对的人，我挥剑转身而坚决如红尘",
                    visits: 346,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}zcx.jpg",
                    title: "依然记得从你眼中滑落的泪坚决如铁，灰暗中种烈日灼身的错觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}rxq.jpg",
                    title: "窗外的麻雀在电线杆上多嘴,你说这一句很有夏天的感觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}zhk.jpg",
                    title: "就是你最爱的歌曲怎么舍得我难过的夜晚怎么不可能",
                    visits: 550,
                  ),
                  MusicBill(
                    width: (almWidth).floorToDouble(),
                    imgUrl: "${Utils.baseUrl}wyt.jpg",
                    title: "我的世界里曾经有你，不需要任何感激",
                    visits: 550,
                  ),
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
