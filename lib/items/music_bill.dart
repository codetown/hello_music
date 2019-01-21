import 'package:flutter/material.dart';

class MusicBill extends StatelessWidget {
  const MusicBill({Key key,this.width,this.imgUrl,this.visits,this.title});
  final double width;
  final String imgUrl;
  final int visits;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child:Stack(
                children: <Widget>[
                  Image.network(
                    imgUrl,
                    width:width,
                    height:width,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top:2.0,
                    right:2.0,
                    child:Row(
                      children: <Widget>[
                        Icon(Icons.surround_sound,color:Color(0xccffffff),size:12.0,),
                        Text("$visits万",style:TextStyle(fontSize:12.0,color:Color(0xccffffff)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 6.0,bottom:6.0),
              width:width,
              height:50.0,
              child: Text(
                title,
                maxLines:2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize:12.0,
                  height:1.25
                ),
              ),
            ),
          ]),
    );
  }
}
