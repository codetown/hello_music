import 'package:flutter/material.dart';
import 'package:hello_music/items/music_bill.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hello_music/utils.dart';
class First extends StatefulWidget {
  First({
    Key key,
  }) : super(key: key);

  // This widget is the First page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  List _sliderList = [];
  @override
  Widget build(BuildContext context) {
    _sliderList = [
      {"image": "guanggao0.jpg"},
      {"image": "guanggao1.jpg"},
      {"image": "guanggao2.jpg"},
      {"image": "guanggao3.jpg"},
      {"image": "guanggao4.jpg"},
      {"image": "guanggao5.jpg"},
    ];
    double cxtWidth = MediaQuery.of(context).size.width;
    double almWidth = (cxtWidth - 64.00) / 3.00;
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
                onPressed: () {
                  Navigator.pushNamed(context, "Cloud");
                },
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
                  Navigator.pushNamed(context, "First");
                },
              ),
            ),
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
              margin: EdgeInsets.only(bottom: 12.0),
              width: cxtWidth,
              height: cxtWidth * 0.382,
              decoration: BoxDecoration(
                color: Colors.white,
                //image:DecorationImage(image:Image.network(src)) ,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(1, 0.5),
                  colors: [Colors.red, Colors.white], // whitish to gray
                  tileMode: TileMode.clamp,
                ),
              ),
              padding: EdgeInsets.only(left: 16.0, right:16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "${Utils.baseUrl}/music/" +
                          _sliderList[index]["image"],
                      width: cxtWidth - 16.0,
                      height: cxtWidth * 0.382,
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: _sliderList.length,
                  pagination: SwiperPagination(
                    margin: EdgeInsets.only(bottom: 16.0),
                    builder: DotSwiperPaginationBuilder(
                      size: 16.0,
                      activeSize: 16.0,
                      color: Color(0x99ffffff),
                      activeColor: Colors.red,
                    ),
                  ),
                ),
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
                            icon: Icon(Icons.live_tv),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0, height: 16.0),
                      Text("私人FM")
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
                            icon: Icon(Icons.perm_contact_calendar),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0, height: 16.0),
                      Text("每日推荐")
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
                            icon: Icon(Icons.satellite),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0, height: 16.0),
                      Text("歌单")
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
                            icon: Icon(Icons.graphic_eq),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0, height: 16.0),
                      Text("排行榜")
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
              padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: Text.rich(
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
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Wrap(
                spacing: 16.0,
                children: <Widget>[
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}/music/zjl.jpg",
                    title: "窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}/music/ljj.jpg",
                    title: "确认过眼神你遇上对的人，我挥剑转身而坚决如红尘",
                    visits: 346,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}/music/zcx.jpg",
                    title: "依然记得从你眼中滑落的泪坚决如铁，灰暗中种烈日灼身的错觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}/music/rxq.jpg",
                    title: "窗外的麻雀在电线杆上多嘴,你说这一句很有夏天的感觉",
                    visits: 550,
                  ),
                  MusicBill(
                    width: almWidth,
                    imgUrl: "${Utils.baseUrl}/music/zhk.jpg",
                    title: "就是你最爱的歌曲怎么舍得我难过的夜晚怎么不可能",
                    visits: 550,
                  ),
                  MusicBill(
                    width: (almWidth).floorToDouble(),
                    imgUrl: "${Utils.baseUrl}/music/wyt.jpg",
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
