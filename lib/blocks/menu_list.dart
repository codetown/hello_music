import 'package:flutter/material.dart';
import 'package:hello_music/items/menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          RawMaterialButton(
            child: const MenuItem(
              iconData: Icons.folder_open,
              iconColor: Colors.red,
              title: '本地音乐',
              count: 99,
            ),
            onPressed: () {},
          ),
          const Divider(
            height: 1.0,
            indent: 50.0,
          ),
          RawMaterialButton(
            child: const MenuItem(
              iconData: Icons.tv,
              title: '我的电台',
              iconColor: Colors.red,
              count: 99,
            ),
            onPressed: () {},
          ),
          const Divider(
            height: 1.0,
            indent: 50.0,
          ),
          RawMaterialButton(
            child: const MenuItem(
              iconData: Icons.timer,
              title: '最近播放',
              iconColor: Colors.red,
              count: 99,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
