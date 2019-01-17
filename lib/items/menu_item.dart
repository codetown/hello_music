import 'package:flutter/material.dart';
class MenuItem extends StatelessWidget{
  const MenuItem({Key key,this.iconData,this.iconColor=Colors.grey,this.title,this.titleColor=Colors.grey});
    final IconData iconData;
  final Color iconColor;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context){
    return Row(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height:48.0,
              width:48.0,
              child: Icon(iconData,color:iconColor,),
            ),
            Expanded(
              child:Text(
                title,
                maxLines:1,
                overflow:TextOverflow.ellipsis,
                style:TextStyle(fontSize:18.0,color:titleColor))
            ),
            SizedBox(
              height:48.0,
              width:36.0,
              child:Icon(Icons.navigate_next,color:Colors.grey[300],size:32.0,),
            )
          ]
    );
  }
}