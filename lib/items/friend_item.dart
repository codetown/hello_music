import 'package:flutter/material.dart';
class MenuItem extends StatelessWidget{
  const MenuItem({Key key,this.imgUrl,this.title,this.subtitle});
  final String imgUrl;
  final String title;
  final String subtitle;  

  @override
  Widget build(BuildContext context){
    return Container(
      decoration:BoxDecoration(color:Colors.white),
      child: Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imgUrl,
              width:64.4,
              height:64.4,
              fit: BoxFit.fill,
            ),
            Container(
              alignment: Alignment.center,
              padding:EdgeInsets.only(left:8.0,right:8.0),
              child:Text(title,maxLines:1,overflow:TextOverflow.ellipsis,style: TextStyle(fontSize:16.0,color:Color(0xffCD7F32)))
            ),
             Container(
              alignment: Alignment.center,
              padding:EdgeInsets.only(left:8.0,right:8.0),
              child:Text(subtitle,maxLines:1,overflow:TextOverflow.ellipsis,style:TextStyle(fontSize:18.0,color:Colors.red,fontWeight:FontWeight.bold))
            )
          ]
      ),
    );
  }
}