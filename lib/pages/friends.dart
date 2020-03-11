import 'package:flutter/material.dart';
import 'package:hello_music/items/friend_item.dart';

class Friends extends StatefulWidget {
  Friends({
    Key key,
  }) : super(key: key);

  // This widget is the Friends page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  List _friendList = [];
  @override
  Widget build(BuildContext context) {
    _friendList = [
      {'title': '悟空', 'subtitle': '花果山水帘洞美猴王齐天大圣'},
      {'title': '牛魔王', 'subtitle': '火焰山芭蕉洞牛魔王平天大圣'},
      {'title': '八戒', 'subtitle': '福林山云栈洞猪妖王前世天蓬元帅'},
      {'title': '悟净', 'subtitle': '八百里流沙河前世卷帘大将'},
    ];
    return Scaffold(
      appBar: AppBar(title:Text("好友列表"),elevation:0.0,),
      backgroundColor:Colors.white,
      body:ListView.separated(
        itemCount: _friendList.length,
        separatorBuilder:(BuildContext sContext, int sIndex){
          return Divider(indent:64.0,height:1.0,color:Colors.grey[200],);
        } ,
        itemBuilder: (BuildContext context, int index) {
          return RawMaterialButton(
            padding:EdgeInsets.all(8.0),
            child: FriendItem(
              imgUrl: "https://gitee.com/codetown/codedata/blob/master/cmovie/images/avatar.png",
              title: _friendList[index]['title'],
              subtitle: _friendList[index]['subtitle'],
            ),
            onPressed: () {},
          );
        },
      ),
      /*Container(
        alignment:Alignment.center,
        child: Icon(Icons.polymer,size:360.0,color:Colors.white),
      )*/
    );
  }
}
