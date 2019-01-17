import 'package:flutter/material.dart';
import 'items/menu_item.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        leading:IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){

          },
        ),

        title:Row(
            children: <Widget>[
              Expanded(
                child:IconButton(
                icon:Icon(Icons.library_music),
                onPressed: (){

                },
              ),
              ),
              Expanded(
                child:
                IconButton(
                icon:Icon(Icons.polymer),
                onPressed: (){

                },
                ),
              ),
              Expanded(
                child:IconButton(
                icon:Icon(Icons.play_circle_outline),
                onPressed: (){

                },
              )
              )
            ],
          ),

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.pool),
              onPressed:(){},
            )
          ],

          centerTitle:true,
          elevation: 0.0,

      ),
        
      body:SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //什么区域
              Container(
                decoration: BoxDecoration(
                  color:Colors.red
                ),
                padding: EdgeInsets.all(4.0),
                child:Card(
                  child:Padding(
                    padding: const EdgeInsets.only(top:8.0,right:8.0,left:8.0,bottom:4.0),
                    child:Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom:4.0),
                          child: Row(
                            children: <Widget>[
                              ClipOval(
                                child:Image.network("https://static.oschina.net/uploads/user/586/1172593_200.jpeg?t=1523263771000",height:50.0,width:50.0) ,
                              ),
                              Expanded(
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child:Text("降世神通",style: TextStyle(fontSize:18.0,height:1.0,fontWeight:FontWeight.w600),),
                                      height:30.0,
                                      padding:EdgeInsets.only(left:8.0)
                                    ),
                                    Container(child: Text("最后的气宗avatar"),
                                      height:20.0,
                                      padding:EdgeInsets.only(left:8.0)
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:24.0,
                                width: 72.0,
                                child: OutlineButton(
                                  padding:EdgeInsets.zero,
                                  color: Colors.white,
                                  splashColor:Colors.white ,
                                  borderSide:BorderSide(width:1.0,color: Colors.red),
                                  child:Text("开通会员",style:TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal,
                                    height:1.0
                                    )
                                  ),
                                  onPressed: (){

                                  },
                                ),
                              )
                            ]
                          ),
                        ),
                        Divider(height:8.0,),
                        Container(
                          height:20.0,
                          child:MaterialButton(
                            onPressed: (){
                              
                            },
                            padding: EdgeInsets.all(0.0),
                            child:Row(
                              children: <Widget>[
                                Expanded(
                                  child:Text("黑胶VIP首开低至9元",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.normal),),
                                ),
                                Text("查看 >",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.normal))
                              ],
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
ListTile(
    contentPadding: EdgeInsets.only(left:10.0,right:10.0),
    leading:Image.network("https://static.oschina.net/uploads/user/586/1172593_200.jpeg?t=1523263771000", height:50.0,width:50.0),
    title:Text("降世神通"),
    subtitle:Text("最后的气宗avatar"),
    trailing:Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:10.0),
            child: Text("17:56",style: TextStyle(color: Colors.grey),),
          ),
          Icon(Icons.surround_sound,color: Colors.grey,)
        ],
    ),
    onTap: (){}
  ),
Divider(height:1.0),
RawMaterialButton(
  child:MenuItem(iconData: Icons.folder_open,title:'本地音乐'),
  onPressed: (){},
),
Divider(height:1.0),
MenuItem(iconData: Icons.file_download,title:'下载管理'),
Divider(height:1.0),
MenuItem(iconData: Icons.tv,title:'我的电台'),
Divider(height:1.0),
MenuItem(iconData: Icons.timer,title:'最近播放'),
Divider(height:1.0),
Text.rich(
  TextSpan(
    children:<TextSpan>[
      TextSpan(text:"本地音乐"),
      TextSpan(text:"(96)",style: TextStyle(fontSize:14.0,color:Colors.grey))
    ]
  )
),
Divider(height:1.0),
            ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

