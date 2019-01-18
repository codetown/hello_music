import 'package:flutter/material.dart';

class FriendItem extends StatelessWidget {
  const FriendItem({Key key, this.imgUrl, this.title, this.subtitle});
  final String imgUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.network(
          imgUrl,
          width: 48.0,
          height: 48.0,
          fit: BoxFit.fill,
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              height: 22.0,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                  /*color: Colors.red,
                  fontWeight: FontWeight.bold,*/
                ),
              ),
            ),
            Container(
              height: 26.0,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
