import 'package:flutter/material.dart';
import 'package:hello_music/items/music_item.dart';

class MusicAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width:10.0,
                height:36.0,
              ),
              Expanded(
                child: Text("我的歌单", style: TextStyle(fontSize: 12.0)),
              ),
              SizedBox(
                width:36.0,
                height:36.0,
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
            ],
          ),
          Divider(height: 1.0),
          Container(
            padding:
                EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: MusicItem(
              imgUrl:
                  "https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
              title: "我最喜欢的音乐",
              subtitle: "97首",
            ),
          ),
          Divider(
            height: 1.0,
            indent: 64.0,
          ),
          Container(
            padding:
                EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: MusicItem(
              imgUrl:
                  "https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
              title: "最平凡的伤感",
              subtitle: "66首",
            ),
          ),
          Divider(
            height: 1.0,
            indent: 64.0,
          ),
          Container(
            padding:
                EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: MusicItem(
              imgUrl:
                  "https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
              title: "周杰伦",
              subtitle: "103首",
            ),
          ),
          Divider(
            height: 1.0,
            indent: 64.0,
          ),
          Container(
            padding:
                EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: MusicItem(
              imgUrl:
                  "https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/9358d109b3de9c8263c93f496e81800a18d8434c.jpg",
              title: "林俊杰",
              subtitle: "112首",
            ),
          ),
        ],
      ),
    );
  }
}
