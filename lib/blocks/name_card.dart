import 'package:flutter/material.dart';
import 'package:hello_music/utils.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
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
                    "${Utils.baseUrl}rxq.jpg",
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 22.0,
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          "降世神通",
                          style: TextStyle(
                              fontSize: 18.0,
                              height: 1.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 18.0,
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text("最后的气宗Avatar"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                  child: OutlinedButton(
                    child: const Text(
                      "开通会员",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        height: 1.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ]),
            ),
            const Divider(
              height: 8.0,
            ),
            SizedBox(
              height: 20.0,
              child: RawMaterialButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                child: const Row(
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
