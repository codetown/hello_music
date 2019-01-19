import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
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
                    borderSide: BorderSide(width: 1.0, color: Colors.red),
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
    );
  }
}
